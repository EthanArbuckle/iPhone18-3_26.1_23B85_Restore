@interface HearingAidAdvancedController
- (id)HIID:(id)d;
- (id)connection:(id)connection;
- (id)firmwareVersion:(id)version;
- (id)hardwareVersion:(id)version;
- (id)specifiers;
- (id)specifiersForEar:(int)ear;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HearingAidAdvancedController

- (void)setSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = HearingAidAdvancedController;
  specifierCopy = specifier;
  [(HearingAidAdvancedController *)&v6 setSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  [(HearingAidAdvancedController *)self setDevice:userInfo];
}

- (id)HIID:(id)d
{
  if (d)
  {
    userInfo = [d userInfo];
    bOOLValue = [userInfo BOOLValue];
    device = [(HearingAidAdvancedController *)self device];
    v7 = device;
    if (bOOLValue)
    {
      [device leftUUID];
    }

    else
    {
      [device rightUUID];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)connection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    device = [(HearingAidAdvancedController *)self device];
    isLeftConnected = [device isLeftConnected];

    device2 = [(HearingAidAdvancedController *)self device];
    isRightConnected = [device2 isRightConnected];

    userInfo = [connectionCopy userInfo];
    if ([userInfo BOOLValue])
    {
      isRightConnected = isLeftConnected;
    }

    v10 = hearingSettingsLocString(@"AdvancedSettingsConnectionStatusNotConnected", @"HearingAidDetailSettings");
    if (isRightConnected == 1)
    {
      v11 = hearingSettingsLocString(@"AdvancedSettingsConnectionStatusConnected", @"HearingAidDetailSettings");

      v10 = v11;
    }
  }

  else
  {
    v10 = hearingSettingsLocString(@"AdvancedSettingsConnectionStatusNotConnected", @"HearingAidDetailSettings");
  }

  return v10;
}

- (id)firmwareVersion:(id)version
{
  versionCopy = version;
  v5 = versionCopy;
  if (!versionCopy)
  {
    goto LABEL_6;
  }

  userInfo = [versionCopy userInfo];
  bOOLValue = [userInfo BOOLValue];
  device = [(HearingAidAdvancedController *)self device];
  v9 = device;
  if (bOOLValue)
  {
    [device leftFirmwareVersion];
  }

  else
  {
    [device rightFirmwareVersion];
  }
  v10 = ;

  if (!v10)
  {
LABEL_6:
    v10 = hearingSettingsLocString(@"AdvancedSettingsValueUnknown", @"HearingAidDetailSettings");
  }

  return v10;
}

- (id)hardwareVersion:(id)version
{
  versionCopy = version;
  v5 = versionCopy;
  if (!versionCopy)
  {
    goto LABEL_6;
  }

  userInfo = [versionCopy userInfo];
  bOOLValue = [userInfo BOOLValue];
  device = [(HearingAidAdvancedController *)self device];
  v9 = device;
  if (bOOLValue)
  {
    [device leftHardwareVersion];
  }

  else
  {
    [device rightHardwareVersion];
  }
  v10 = ;

  if (!v10)
  {
LABEL_6:
    v10 = hearingSettingsLocString(@"AdvancedSettingsValueUnknown", @"HearingAidDetailSettings");
  }

  return v10;
}

- (id)specifiersForEar:(int)ear
{
  v5 = +[NSMutableArray array];
  v6 = ear == 2;
  v7 = hearingSettingsLocString(@"AdvancedSettingsConnectionTitle", @"HearingAidDetailSettings");
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"connection:" detail:0 cell:4 edit:0];

  v9 = [NSNumber numberWithBool:v6];
  [v8 setUserInfo:v9];

  [v5 addObject:v8];
  v10 = hearingSettingsLocString(@"AdvancedSettingsHIIDTitle", @"HearingAidDetailSettings");
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"HIID:" detail:0 cell:4 edit:0];

  v12 = [NSNumber numberWithBool:v6];
  [v11 setUserInfo:v12];

  [v5 addObject:v11];
  v13 = hearingSettingsLocString(@"AdvancedSettingsFirmwareTitle", @"HearingAidDetailSettings");
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"firmwareVersion:" detail:0 cell:4 edit:0];

  v15 = [NSNumber numberWithBool:v6];
  [v14 setUserInfo:v15];

  [v5 addObject:v14];
  v16 = hearingSettingsLocString(@"AdvancedSettingsHardwareTitle", @"HearingAidDetailSettings");
  v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:"hardwareVersion:" detail:0 cell:4 edit:0];

  v18 = [NSNumber numberWithBool:v6];
  [v17 setUserInfo:v18];

  [v5 addObject:v17];

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    device = [(HearingAidAdvancedController *)self device];
    rightAvailable = [device rightAvailable];

    if (rightAvailable)
    {
      v8 = hearingSettingsLocString(@"AdvancedSettingsGroupRightTitle", @"HearingAidDetailSettings");
      v9 = [PSSpecifier groupSpecifierWithName:v8];

      [v5 addObject:v9];
      v10 = [(HearingAidAdvancedController *)self specifiersForEar:4];
      [v5 addObjectsFromArray:v10];
    }

    device2 = [(HearingAidAdvancedController *)self device];
    leftAvailable = [device2 leftAvailable];

    if (leftAvailable)
    {
      v13 = hearingSettingsLocString(@"AdvancedSettingsGroupLeftTitle", @"HearingAidDetailSettings");
      v14 = [PSSpecifier groupSpecifierWithName:v13];

      [v14 setIdentifier:@"LeftGroup"];
      [v5 addObject:v14];
      v15 = [(HearingAidAdvancedController *)self specifiersForEar:2];
      [v5 addObjectsFromArray:v15];
    }

    v16 = +[AXHAServer sharedInstance];
    availableControllers = [v16 availableControllers];
    v18 = [availableControllers count];

    if (v18)
    {
      v19 = hearingSettingsLocString(@"AdvancedSettingsAvailableControllers", @"HearingAidDetailSettings");
      v20 = [PSSpecifier groupSpecifierWithName:v19];

      [v5 addObject:v20];
      v21 = +[AXHAServer sharedInstance];
      availableControllers2 = [v21 availableControllers];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_2CC90;
      v25[3] = &unk_49428;
      v25[4] = self;
      v26 = v5;
      [availableControllers2 enumerateObjectsUsingBlock:v25];
    }

    v23 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = HearingAidAdvancedController;
  pathCopy = path;
  [(HearingAidAdvancedController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(HearingAidAdvancedController *)self indexForIndexPath:pathCopy, v11.receiver, v11.super_class];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v7];
    v9 = [v8 propertyForKey:@"controller"];
    if ([v9 length])
    {
      v10 = +[AXHAServer sharedInstance];
      [v10 connectToControllerWithID:v9];
    }
  }
}

@end