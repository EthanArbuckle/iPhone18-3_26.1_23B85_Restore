@interface HearingAidAdvancedController
- (id)HIID:(id)a3;
- (id)connection:(id)a3;
- (id)firmwareVersion:(id)a3;
- (id)hardwareVersion:(id)a3;
- (id)specifiers;
- (id)specifiersForEar:(int)a3;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HearingAidAdvancedController

- (void)setSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = HearingAidAdvancedController;
  v4 = a3;
  [(HearingAidAdvancedController *)&v6 setSpecifier:v4];
  v5 = [v4 userInfo];

  [(HearingAidAdvancedController *)self setDevice:v5];
}

- (id)HIID:(id)a3
{
  if (a3)
  {
    v4 = [a3 userInfo];
    v5 = [v4 BOOLValue];
    v6 = [(HearingAidAdvancedController *)self device];
    v7 = v6;
    if (v5)
    {
      [v6 leftUUID];
    }

    else
    {
      [v6 rightUUID];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)connection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HearingAidAdvancedController *)self device];
    v6 = [v5 isLeftConnected];

    v7 = [(HearingAidAdvancedController *)self device];
    v8 = [v7 isRightConnected];

    v9 = [v4 userInfo];
    if ([v9 BOOLValue])
    {
      v8 = v6;
    }

    v10 = hearingSettingsLocString(@"AdvancedSettingsConnectionStatusNotConnected", @"HearingAidDetailSettings");
    if (v8 == 1)
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

- (id)firmwareVersion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = [v4 userInfo];
  v7 = [v6 BOOLValue];
  v8 = [(HearingAidAdvancedController *)self device];
  v9 = v8;
  if (v7)
  {
    [v8 leftFirmwareVersion];
  }

  else
  {
    [v8 rightFirmwareVersion];
  }
  v10 = ;

  if (!v10)
  {
LABEL_6:
    v10 = hearingSettingsLocString(@"AdvancedSettingsValueUnknown", @"HearingAidDetailSettings");
  }

  return v10;
}

- (id)hardwareVersion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = [v4 userInfo];
  v7 = [v6 BOOLValue];
  v8 = [(HearingAidAdvancedController *)self device];
  v9 = v8;
  if (v7)
  {
    [v8 leftHardwareVersion];
  }

  else
  {
    [v8 rightHardwareVersion];
  }
  v10 = ;

  if (!v10)
  {
LABEL_6:
    v10 = hearingSettingsLocString(@"AdvancedSettingsValueUnknown", @"HearingAidDetailSettings");
  }

  return v10;
}

- (id)specifiersForEar:(int)a3
{
  v5 = +[NSMutableArray array];
  v6 = a3 == 2;
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
    v6 = [(HearingAidAdvancedController *)self device];
    v7 = [v6 rightAvailable];

    if (v7)
    {
      v8 = hearingSettingsLocString(@"AdvancedSettingsGroupRightTitle", @"HearingAidDetailSettings");
      v9 = [PSSpecifier groupSpecifierWithName:v8];

      [v5 addObject:v9];
      v10 = [(HearingAidAdvancedController *)self specifiersForEar:4];
      [v5 addObjectsFromArray:v10];
    }

    v11 = [(HearingAidAdvancedController *)self device];
    v12 = [v11 leftAvailable];

    if (v12)
    {
      v13 = hearingSettingsLocString(@"AdvancedSettingsGroupLeftTitle", @"HearingAidDetailSettings");
      v14 = [PSSpecifier groupSpecifierWithName:v13];

      [v14 setIdentifier:@"LeftGroup"];
      [v5 addObject:v14];
      v15 = [(HearingAidAdvancedController *)self specifiersForEar:2];
      [v5 addObjectsFromArray:v15];
    }

    v16 = +[AXHAServer sharedInstance];
    v17 = [v16 availableControllers];
    v18 = [v17 count];

    if (v18)
    {
      v19 = hearingSettingsLocString(@"AdvancedSettingsAvailableControllers", @"HearingAidDetailSettings");
      v20 = [PSSpecifier groupSpecifierWithName:v19];

      [v5 addObject:v20];
      v21 = +[AXHAServer sharedInstance];
      v22 = [v21 availableControllers];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_2CC90;
      v25[3] = &unk_49428;
      v25[4] = self;
      v26 = v5;
      [v22 enumerateObjectsUsingBlock:v25];
    }

    v23 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = HearingAidAdvancedController;
  v6 = a4;
  [(HearingAidAdvancedController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(HearingAidAdvancedController *)self indexForIndexPath:v6, v11.receiver, v11.super_class];

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