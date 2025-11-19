@interface CACAlwaysShowOverlayController
- (BOOL)didAddGridSpecifiers;
- (BOOL)didAddOverlaySpecifiers;
- (CACAlwaysShowOverlayController)init;
- (id)gridOverlayColumnsSummary:(id)a3;
- (id)gridOverlayMaxLevelSummary:(id)a3;
- (id)gridOverlayPressOnFirstLevelEnabled:(id)a3;
- (id)gridOverlayRowsSummary:(id)a3;
- (id)overlayFadeDelaySummary:(id)a3;
- (id)overlayFadeOpacitySummary:(id)a3;
- (id)specifiers;
- (void)dealloc;
- (void)setGridOverlayPressOnFirstLevel:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CACAlwaysShowOverlayController

- (CACAlwaysShowOverlayController)init
{
  v5.receiver = self;
  v5.super_class = CACAlwaysShowOverlayController;
  v2 = [(CACAlwaysShowOverlayController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_B25C, @"NotificationAlwaysShowOverlayTypeSettingsChanged", 0, 1028);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NotificationAlwaysShowOverlayTypeSettingsChanged", 0);
  v4.receiver = self;
  v4.super_class = CACAlwaysShowOverlayController;
  [(CACAlwaysShowOverlayController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[PSSpecifier emptyGroupSpecifier];
    [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v6 = settingsLocString(@"OVERLAY_NONE", @"CommandAndControlSettings");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v8 = PSIDKey;
    [v7 setProperty:@"OVERLAY_NONE" forKey:PSIDKey];
    v9 = settingsLocString(@"OVERLAY_NUMBERS", @"CommandAndControlSettings");
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v58 = v10;
    [v10 setProperty:@"OVERLAY_NUMBERS" forKey:v8];
    v11 = settingsLocString(@"OVERLAY_NAMES", @"CommandAndControlSettings");
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v13 = v12;
    [v12 setProperty:@"OVERLAY_NAMES" forKey:v8];
    v14 = settingsLocString(@"OVERLAY_GRID", @"CommandAndControlSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v15 setProperty:@"OVERLAY_GRID" forKey:v8];
    v16 = +[VCSettingsObjC shared];
    v17 = [v16 alwaysShowOverlayType];

    v18 = [v17 isEqualToString:@"None"];
    v19 = v7;
    if (v18 & 1) != 0 || (v20 = [v17 isEqualToString:@"NumberedElements"], v19 = v58, (v20) || (v21 = objc_msgSend(v17, "isEqualToString:", @"NamedElements"), v19 = v13, (v21) || (v22 = objc_msgSend(v17, "isEqualToString:", @"NumberedGrid"), v19 = v15, v22))
    {
      [v5 setProperty:v19 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v52 = v17;
    v53 = v15;
    v55 = v7;
    v56 = v5;
    v61[0] = v5;
    v61[1] = v7;
    v61[2] = v58;
    v61[3] = v13;
    v54 = v13;
    v61[4] = v15;
    v23 = [NSArray arrayWithObjects:v61 count:5];
    v24 = [NSMutableArray arrayWithArray:v23];

    v25 = +[PSSpecifier emptyGroupSpecifier];
    v26 = settingsLocString(@"OVERLAY_FADE_DELAY_TITLE", @"CommandAndControlSettings");
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:0 get:"overlayFadeDelaySummary:" detail:objc_opt_class() cell:2 edit:0];

    v28 = settingsLocString(@"OVERLAY_FADE_OPACITY_TITLE", @"CommandAndControlSettings");
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:"overlayFadeOpacitySummary:" detail:objc_opt_class() cell:2 edit:0];

    v50 = v27;
    v51 = v25;
    v60[0] = v25;
    v60[1] = v27;
    v49 = v29;
    v60[2] = v29;
    v30 = [NSArray arrayWithObjects:v60 count:3];
    v31 = +[VCSettingsObjC shared];
    v32 = [v31 alwaysShowOverlayType];
    LOBYTE(v27) = [v32 isEqualToString:@"None"];

    [(CACAlwaysShowOverlayController *)self setDimmingSpecifiers:v30];
    if ((v27 & 1) == 0)
    {
      [v24 addObjectsFromArray:v30];
    }

    v48 = v30;
    v57 = v24;
    v33 = settingsLocString(@"GRID_OVERLAY_GROUP_TITLE", @"CommandAndControlSettings");
    v34 = [PSSpecifier groupSpecifierWithName:v33];

    v35 = settingsLocString(@"GRID_OVERLAY_GROUP_FOOTER", @"CommandAndControlSettings");
    [v34 setProperty:v35 forKey:PSFooterTextGroupKey];

    v36 = settingsLocString(@"GRID_OVERLAY_ROWS_TITLE", @"CommandAndControlSettings");
    v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:self set:0 get:"gridOverlayRowsSummary:" detail:objc_opt_class() cell:2 edit:0];

    v38 = settingsLocString(@"GRID_OVERLAY_COLUMNS_TITLE", @"CommandAndControlSettings");
    v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:self set:0 get:"gridOverlayColumnsSummary:" detail:objc_opt_class() cell:2 edit:0];

    v40 = settingsLocString(@"GRID_OVERLAY_PRESS_IMMEDIATELY_TITLE", @"CommandAndControlSettings");
    v41 = [PSSpecifier preferenceSpecifierNamed:v40 target:self set:"setGridOverlayPressOnFirstLevel:specifier:" get:"gridOverlayPressOnFirstLevelEnabled:" detail:0 cell:6 edit:0];

    v59[0] = v34;
    v59[1] = v41;
    v59[2] = v37;
    v59[3] = v39;
    v42 = [NSArray arrayWithObjects:v59 count:4];
    [(CACAlwaysShowOverlayController *)self setGridSpecifiers:v42];
    v43 = +[VCSettingsObjC shared];
    v44 = [v43 alwaysShowOverlayType];
    v45 = [v44 isEqualToString:@"NumberedGrid"];

    if (v45 && ![(CACAlwaysShowOverlayController *)self didAddGridSpecifiers])
    {
      [v57 addObjectsFromArray:v42];
    }

    v46 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v57;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v59.receiver = self;
  v59.super_class = CACAlwaysShowOverlayController;
  [(CACAlwaysShowOverlayController *)&v59 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(CACAlwaysShowOverlayController *)self specifierAtIndexPath:v6];
  v8 = [v7 propertyForKey:PSIDKey];
  if (![v6 section])
  {
    if ([v8 isEqualToString:@"OVERLAY_NONE"])
    {
      v9 = @"None";
    }

    else if ([v8 isEqualToString:@"OVERLAY_NUMBERS"])
    {
      v9 = @"NumberedElements";
    }

    else if ([v8 isEqualToString:@"OVERLAY_NAMES"])
    {
      v9 = @"NamedElements";
    }

    else
    {
      if (![v8 isEqualToString:@"OVERLAY_GRID"])
      {
        goto LABEL_11;
      }

      v9 = @"NumberedGrid";
    }

    v10 = +[VCSettingsObjC shared];
    [v10 setAlwaysShowOverlayType:v9];
  }

LABEL_11:
  if ([v8 isEqualToString:@"OVERLAY_NONE"])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v11 = [(CACAlwaysShowOverlayController *)self dimmingSpecifiers];
    v12 = [v11 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v12)
    {
      v13 = v12;
      v41 = v7;
      v14 = *v56;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v56 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v55 + 1) + 8 * i);
          v17 = [(CACAlwaysShowOverlayController *)self specifiers];
          v18 = [v17 containsObject:v16];

          if (v18)
          {
            [(CACAlwaysShowOverlayController *)self removeSpecifier:v16 animated:1];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v13);
LABEL_32:
      v7 = v41;
    }
  }

  else
  {
    if ([(CACAlwaysShowOverlayController *)self didAddOverlaySpecifiers])
    {
      goto LABEL_34;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = [(CACAlwaysShowOverlayController *)self dimmingSpecifiers];
    v19 = [v11 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v19)
    {
      v20 = v19;
      v41 = v7;
      v21 = *v52;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(v11);
          }

          v23 = *(*(&v51 + 1) + 8 * j);
          v24 = [(CACAlwaysShowOverlayController *)self specifiers];
          v25 = [v24 containsObject:v23];

          if (v25)
          {
            [(CACAlwaysShowOverlayController *)self addSpecifier:v23 animated:1];
          }
        }

        v20 = [v11 countByEnumeratingWithState:&v51 objects:v62 count:16];
      }

      while (v20);
      goto LABEL_32;
    }
  }

LABEL_34:
  v26 = +[VCSettingsObjC shared];
  v27 = [v26 alwaysShowOverlayType];
  v28 = [v27 isEqualToString:@"NumberedGrid"];

  if (!v28)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = [(CACAlwaysShowOverlayController *)self gridSpecifiers];
    v34 = [v29 countByEnumeratingWithState:&v43 objects:v60 count:16];
    if (v34)
    {
      v35 = v34;
      v42 = v7;
      v36 = *v44;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(v29);
          }

          v38 = *(*(&v43 + 1) + 8 * k);
          v39 = [(CACAlwaysShowOverlayController *)self specifiers];
          v40 = [v39 containsObject:v38];

          if (v40)
          {
            [(CACAlwaysShowOverlayController *)self removeSpecifier:v38 animated:1];
          }
        }

        v35 = [v29 countByEnumeratingWithState:&v43 objects:v60 count:16];
      }

      while (v35);
      v7 = v42;
    }

    goto LABEL_54;
  }

  if (![(CACAlwaysShowOverlayController *)self didAddGridSpecifiers])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v29 = [(CACAlwaysShowOverlayController *)self gridSpecifiers];
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v61 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v48;
      do
      {
        for (m = 0; m != v31; m = m + 1)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [(CACAlwaysShowOverlayController *)self addSpecifier:*(*(&v47 + 1) + 8 * m) animated:1];
        }

        v31 = [v29 countByEnumeratingWithState:&v47 objects:v61 count:16];
      }

      while (v31);
    }

LABEL_54:
  }
}

- (BOOL)didAddGridSpecifiers
{
  v2 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v3 = [(CACAlwaysShowOverlayController *)self gridSpecifiers];
  v4 = [v3 firstObject];
  LOBYTE(v2) = [v2 containsObject:v4];

  return v2;
}

- (BOOL)didAddOverlaySpecifiers
{
  v2 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v3 = [(CACAlwaysShowOverlayController *)self dimmingSpecifiers];
  v4 = [v3 firstObject];
  LOBYTE(v2) = [v2 containsObject:v4];

  return v2;
}

- (id)overlayFadeDelaySummary:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 overlayFadingEnabled];

  if (v4)
  {
    v5 = +[CACPreferences sharedPreferences];
    [v5 overlayFadeDelay];
    v6 = AXLocalizedTimeSummary();
  }

  else
  {
    v6 = settingsLocString(@"FEATURE_OFF", @"CommandAndControlSettings");
  }

  return v6;
}

- (id)overlayFadeOpacitySummary:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v4 = AXFormatFloatWithPercentage();

  return v4;
}

- (id)gridOverlayColumnsSummary:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 gridOverlayCustomColumnsEnabled];

  if (v4)
  {
    v5 = +[CACPreferences sharedPreferences];
    [v5 gridOverlayCustomColumnsCount];
    v6 = AXFormatInteger();
    v7 = [NSString stringWithFormat:@"%@", v6];
  }

  else
  {
    v7 = settingsLocString(@"FEATURE_AUTO", @"CommandAndControlSettings");
  }

  return v7;
}

- (id)gridOverlayRowsSummary:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 gridOverlayCustomRowsEnabled];

  if (v4)
  {
    v5 = +[CACPreferences sharedPreferences];
    [v5 gridOverlayCustomRowsCount];
    v6 = AXFormatInteger();
    v7 = [NSString stringWithFormat:@"%@", v6];
  }

  else
  {
    v7 = settingsLocString(@"FEATURE_AUTO", @"CommandAndControlSettings");
  }

  return v7;
}

- (void)setGridOverlayPressOnFirstLevel:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[CACPreferences sharedPreferences];
  v5 = [v4 BOOLValue];

  [v6 setGridOverlayPressOnFirstLevelEnabled:v5];
}

- (id)gridOverlayPressOnFirstLevelEnabled:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 gridOverlayPressOnFirstLevelEnabled]);

  return v4;
}

- (id)gridOverlayMaxLevelSummary:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 gridOverlayMaxLevel];
  v4 = AXFormatInteger();

  return v4;
}

@end