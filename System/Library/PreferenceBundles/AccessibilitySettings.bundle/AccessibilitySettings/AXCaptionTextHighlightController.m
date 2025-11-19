@interface AXCaptionTextHighlightController
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_videoOverridesStyle:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation AXCaptionTextHighlightController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTextHighlightController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  v3 = [(AXCaptionTextHighlightController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionColorCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v4 _scaledValueForValue:20.0];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AXCaptionTextHighlightController;
    [(AXCaptionTextHighlightController *)&v8 tableView:a3 heightForHeaderInSection:?];
  }

  return result;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = settingsLocString(@"CAPTION_COLOR", @"CaptioningStyle");
    v5 = [v4 uppercaseString];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AXCaptionTextHighlightController;
    v5 = [(AXCaptionTextHighlightController *)&v7 tableView:a3 titleForHeaderInSection:?];
  }

  return v5;
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v36 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v43 = self;
    v5 = [(AXCaptionStyleChooserController *)self captionPreviewSpecifiers];
    [v4 addObjectsFromArray:v5];

    v42 = v4;
    v6 = [v4 lastObject];
    v7 = settingsLocString(@"CAPTION_COLOR", @"CaptioningStyle");
    v37 = v6;
    [v6 setName:v7];

    v41 = AXCaptionColorDefault(2);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = AXCaptionColors(2);
    v8 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v49;
      v11 = PSCellClassKey;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v48 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"name"];
          v15 = settingsLocString(v14, @"CaptioningStyle");
          v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:v43 set:0 get:0 detail:0 cell:3 edit:0];

          [v16 setProperty:objc_opt_class() forKey:v11];
          v17 = [v13 objectForKeyedSubscript:@"rgb"];
          [v16 setProperty:v17 forKey:@"rgb"];

          [v16 setProperty:&off_27B520 forKey:@"colorType"];
          v18 = [v13 objectForKeyedSubscript:@"rgb"];
          LODWORD(v17) = [v41 isEqualToArray:v18];

          if (v17)
          {
            [v16 setProperty:&__kCFBooleanTrue forKey:@"isDefault"];
          }

          [v16 setCellType:3];
          [v42 addObject:v16];
        }

        v9 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v9);
    }

    v19 = settingsLocString(@"CAPTION_TRANSPARENCY", @"CaptioningStyle");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:v43 set:0 get:0 detail:0 cell:0 edit:0];

    v35 = v20;
    [v42 addObject:v20];
    obja = AXCaptionTransparencyDefault(2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v38 = AXCaptionTransparency(2);
    v21 = [v38 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v45;
      v24 = PSCellClassKey;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v45 != v23)
          {
            objc_enumerationMutation(v38);
          }

          v26 = *(*(&v44 + 1) + 8 * j);
          v27 = [v26 objectForKeyedSubscript:@"name"];
          v28 = settingsLocString(v27, @"CaptioningStyle");
          v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:v43 set:0 get:0 detail:0 cell:3 edit:0];

          [v29 setProperty:objc_opt_class() forKey:v24];
          v30 = [v26 objectForKeyedSubscript:@"alpha"];
          [v29 setProperty:v30 forKey:@"alpha"];

          v31 = [v26 objectForKeyedSubscript:@"rgb"];
          [v29 setProperty:v31 forKey:@"rgb"];

          [v29 setProperty:&off_27B520 forKey:@"transparencyType"];
          if ([v26 isEqualToDictionary:obja])
          {
            [v29 setProperty:&__kCFBooleanTrue forKey:@"isDefault"];
          }

          [v29 setCellType:3];
          [v42 addObject:v29];
        }

        v22 = [v38 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v22);
    }

    v32 = [(AXCaptionStyleChooserController *)v43 videoOverrideSpecifiers];
    [v42 addObjectsFromArray:v32];

    v33 = *&v43->super.AXUISettingsBaseListController_opaque[v36];
    *&v43->super.AXUISettingsBaseListController_opaque[v36] = v42;

    v3 = *&v43->super.AXUISettingsBaseListController_opaque[v36];
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v20.receiver = self;
  v20.super_class = AXCaptionTextHighlightController;
  [(AXCaptionStyleChooserController *)&v20 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:a5];
  v9 = v8;
  v10 = [v9 specifier];
  v11 = [v10 propertyForKey:@"colorType"];
  v12 = [v11 intValue];

  if (v12 == 2)
  {
    v13 = [v9 specifier];
    v14 = [v13 propertyForKey:@"rgb"];
    v15 = [(AXCaptionStyleChooserController *)self isStoredColorType:2 equalWithColors:v14];
  }

  else
  {
    v16 = [v10 propertyForKey:@"transparencyType"];
    v17 = [v16 intValue];

    if (v17 != 2)
    {
LABEL_7:
      v19 = 0;
      goto LABEL_8;
    }

    v13 = [v9 specifier];
    v14 = [v13 propertyForKey:@"alpha"];
    v15 = [(AXCaptionStyleChooserController *)self isStoredTransparencyType:2 equalWithTransparency:v14];
  }

  v18 = v15;

  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = 1;
LABEL_8:
  [v9 setChecked:v19];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v31.receiver = self;
  v31.super_class = AXCaptionTextHighlightController;
  v7 = a3;
  [(AXCaptionTextHighlightController *)&v31 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:v6];

  v9 = [v8 specifier];

  v10 = [v9 propertyForKey:@"colorType"];
  v11 = [v10 intValue];

  if (v11 == 2)
  {
    v12 = [v9 propertyForKey:@"rgb"];
    v13 = [v12 objectAtIndexedSubscript:0];
    [v13 floatValue];
    v15 = v14;
    v16 = [v12 objectAtIndexedSubscript:1];
    [v16 floatValue];
    v18 = v17;
    v19 = [v12 objectAtIndexedSubscript:2];
    [v19 floatValue];
    v21 = [UIColor colorWithRed:v15 green:v18 blue:v20 alpha:1.0];

    v22 = v21;
    AXPerformBlockOnMainThreadAfterDelay();

LABEL_5:
    goto LABEL_6;
  }

  v23 = [v9 propertyForKey:@"transparencyType"];
  v24 = [v23 intValue];

  if (v24 == 2)
  {
    [v9 propertyForKey:@"alpha"];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = __70__AXCaptionTextHighlightController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v28 = &unk_255538;
    v30 = v29 = self;
    v12 = v30;
    AXPerformBlockOnMainThreadAfterDelay();

    goto LABEL_5;
  }

LABEL_6:
  [(AXCaptionStyleChooserController *)self updateTableCheckedSelection:v6, v25, v26, v27, v28, v29];
}

uint64_t __70__AXCaptionTextHighlightController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profileId];
  v3 = [*(a1 + 40) CGColor];

  return _MACaptionAppearancePrefSetBackgroundColor(v2, v3);
}

uint64_t __70__AXCaptionTextHighlightController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) profileId];
  v3 = *(a1 + 40);

  return _MACaptionAppearancePrefSetBackgroundOpacity(v2, v3);
}

- (id)_videoOverridesStyle:(id)a3
{
  [(AXCaptionStyleChooserController *)self profileId];
  v4 = MACaptionAppearancePrefCopyVideoOverrideBackgroundColor();
  [(AXCaptionStyleChooserController *)self profileId];
  v5 = MACaptionAppearancePrefCopyVideoOverrideBackgroundOpacity();
  if ([v4 BOOLValue])
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithInt:v6];

  return v7;
}

- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4
{
  v5 = a3;
  [(AXCaptionStyleChooserController *)self profileId];
  [v5 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideBackgroundColor();
  [(AXCaptionStyleChooserController *)self profileId];
  [v5 BOOLValue];

  MACaptionAppearancePrefSetVideoOverrideBackgroundOpacity();
}

@end