@interface GuidedAccessAutoLockController
- (id)_specifierForTimeInSeconds:(int64_t)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation GuidedAccessAutoLockController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v6 setProperty:@"DurationsGroup" forKey:PSIDKey];
    v7 = +[AXSettings sharedInstance];
    v8 = [v7 guidedAccessAutoLockTimeInSeconds];
    v9 = AXSGuidedAccessAutoLockTimeMirrorSystem;

    if (v8 == v9)
    {
      v10 = AXLocStringKeyForModel();
      v11 = settingsLocString(v10, @"GuidedAccessSettings");
      [v6 setProperty:v11 forKey:PSFooterTextGroupKey];
    }

    [v5 addObject:v6];
    if (specifiers_onceToken_0 != -1)
    {
      [GuidedAccessAutoLockController specifiers];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = specifiers_standardDurations;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = -[GuidedAccessAutoLockController _specifierForTimeInSeconds:](self, "_specifierForTimeInSeconds:", [*(*(&v20 + 1) + 8 * i) integerValue]);
          [v5 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    v18 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

void __44__GuidedAccessAutoLockController_specifiers__block_invoke(id a1)
{
  v1 = [NSNumber numberWithInteger:AXSGuidedAccessAutoLockTimeMirrorSystem];
  v5[0] = v1;
  v5[1] = &off_27D100;
  v5[2] = &off_279C48;
  v5[3] = &off_279C60;
  v5[4] = &off_279C78;
  v5[5] = &off_279C90;
  v5[6] = &off_279CA8;
  v5[7] = &off_279CC0;
  v5[8] = &off_279CD8;
  v2 = [NSNumber numberWithInteger:AXSGuidedAccessAutoLockTimeNever];
  v5[9] = v2;
  v3 = [NSArray arrayWithObjects:v5 count:10];
  v4 = specifiers_standardDurations;
  specifiers_standardDurations = v3;
}

- (id)_specifierForTimeInSeconds:(int64_t)a3
{
  v4 = GuidedAccessDescriptionForAutoLockTime(a3);
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  v6 = [NSNumber numberWithInteger:a3];
  [v5 setProperty:v6 forKey:@"TimeInSeconds"];

  [v5 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = GuidedAccessAutoLockController;
  v4 = [(GuidedAccessAutoLockController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 specifier];
  v6 = [v5 propertyForKey:@"TimeInSeconds"];
  v7 = [v6 integerValue];
  v8 = +[AXSettings sharedInstance];
  [v4 setChecked:{v7 == objc_msgSend(v8, "guidedAccessAutoLockTimeInSeconds")}];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = GuidedAccessAutoLockController;
  [(GuidedAccessAutoLockController *)&v17 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(GuidedAccessAutoLockController *)self specifierAtIndexPath:v6];
  v8 = +[AXSettings sharedInstance];
  v9 = [v8 guidedAccessAutoLockTimeInSeconds];

  v10 = [v7 propertyForKey:@"TimeInSeconds"];
  v11 = [v10 integerValue];

  if (v9 != v11)
  {
    v12 = +[AXSettings sharedInstance];
    [v12 setGuidedAccessAutoLockTimeInSeconds:v11];

    [(GuidedAccessAutoLockController *)self updateVisibleCellsWithCheckedSelection:v6];
    v13 = [(GuidedAccessAutoLockController *)self specifierForID:@"DurationsGroup"];
    v14 = v13;
    if (v9 == AXSGuidedAccessAutoLockTimeMirrorSystem)
    {
      [v13 setProperty:&stru_25D420 forKey:PSFooterTextGroupKey];
    }

    else
    {
      if (v11 != AXSGuidedAccessAutoLockTimeMirrorSystem)
      {
LABEL_7:

        goto LABEL_8;
      }

      v15 = AXLocStringKeyForModel();
      v16 = settingsLocString(v15, @"GuidedAccessSettings");
      [v14 setProperty:v16 forKey:PSFooterTextGroupKey];
    }

    [(GuidedAccessAutoLockController *)self reloadSpecifier:v14 animated:1];
    goto LABEL_7;
  }

LABEL_8:
}

@end