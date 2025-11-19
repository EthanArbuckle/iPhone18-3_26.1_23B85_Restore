@interface AXCaptionTransparencyController
- (id)_videoOverridesStyle:(id)a3;
- (id)specifiers;
- (int)transparencyType;
- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation AXCaptionTransparencyController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTransparencyController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  v3 = [(AXCaptionTransparencyController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionColorCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (int)transparencyType
{
  v2 = [(AXCaptionTransparencyController *)self specifier];
  v3 = [v2 propertyForKey:@"transparencyType"];

  if ([v3 isEqualToString:@"text"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"window"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"background"])
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v20 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [(AXCaptionStyleChooserController *)self captionPreviewSpecifiers];
    v24 = v4;
    [v4 addObjectsFromArray:v5];

    v23 = AXCaptionTransparencyDefault([(AXCaptionTransparencyController *)self transparencyType]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = AXCaptionTransparency([(AXCaptionTransparencyController *)self transparencyType]);
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v22 = *v26;
      v8 = PSCellClassKey;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"name"];
          v12 = settingsLocString(v11, @"CaptioningStyle");
          v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v13 setProperty:objc_opt_class() forKey:v8];
          v14 = [v10 objectForKeyedSubscript:@"alpha"];
          [v13 setProperty:v14 forKey:@"alpha"];

          v15 = [v10 objectForKeyedSubscript:@"rgb"];
          [v13 setProperty:v15 forKey:@"rgb"];

          v16 = [NSNumber numberWithUnsignedInt:[(AXCaptionTransparencyController *)self transparencyType]];
          [v13 setProperty:v16 forKey:@"transparencyType"];

          if ([v10 isEqualToDictionary:v23])
          {
            [v13 setProperty:&__kCFBooleanTrue forKey:@"isDefault"];
          }

          [v13 setCellType:3];
          [v24 addObject:v13];
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

    v17 = [(AXCaptionStyleChooserController *)self videoOverrideSpecifiers];
    [v24 addObjectsFromArray:v17];

    v18 = *&self->super.AXUISettingsBaseListController_opaque[v20];
    *&self->super.AXUISettingsBaseListController_opaque[v20] = v24;

    v3 = *&self->super.AXUISettingsBaseListController_opaque[v20];
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AXCaptionTransparencyController;
  [(AXCaptionStyleChooserController *)&v14 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:a5];
  v9 = v8;
  v10 = [(AXCaptionTransparencyController *)self transparencyType];
  v11 = [v9 specifier];
  v12 = [v11 propertyForKey:@"alpha"];
  v13 = [(AXCaptionStyleChooserController *)self isStoredTransparencyType:v10 equalWithTransparency:v12];

  [v9 setChecked:v13];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = AXCaptionTransparencyController;
  v6 = a4;
  v7 = a3;
  [(AXCaptionTransparencyController *)&v13 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:v6];

  v9 = [v8 specifier];

  v10 = [v9 propertyForKey:@"alpha"];
  [(AXCaptionTransparencyController *)self transparencyType];
  v12 = v10;
  v11 = v10;
  AXPerformBlockOnMainThreadAfterDelay();
  [(AXCaptionStyleChooserController *)self updateTableCheckedSelection:v6];
}

uint64_t __69__AXCaptionTransparencyController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  switch(v2)
  {
    case 1:
      v7 = [*(result + 32) profileId];
      v8 = *(v1 + 40);

      return _MACaptionAppearancePrefSetForegroundOpacity(v7, v8);
    case 3:
      v5 = [*(result + 32) profileId];
      v6 = *(v1 + 40);

      return _MACaptionAppearancePrefSetWindowOpacity(v5, v6);
    case 2:
      v3 = [*(result + 32) profileId];
      v4 = *(v1 + 40);

      return _MACaptionAppearancePrefSetBackgroundOpacity(v3, v4);
  }

  return result;
}

- (id)_videoOverridesStyle:(id)a3
{
  v4 = [(AXCaptionTransparencyController *)self transparencyType];
  switch(v4)
  {
    case 1u:
      [(AXCaptionStyleChooserController *)self profileId];
      v5 = MACaptionAppearancePrefCopyVideoOverrideForegroundOpacity();
      break;
    case 3u:
      [(AXCaptionStyleChooserController *)self profileId];
      v5 = MACaptionAppearancePrefCopyVideoOverrideWindowOpacity();
      break;
    case 2u:
      [(AXCaptionStyleChooserController *)self profileId];
      v5 = MACaptionAppearancePrefCopyVideoOverrideBackgroundOpacity();
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4
{
  v8 = a3;
  v5 = [(AXCaptionTransparencyController *)self transparencyType];
  if (v5 == 1)
  {
    [(AXCaptionStyleChooserController *)self profileId];
    [v8 BOOLValue];
    MACaptionAppearancePrefSetVideoOverrideForegroundOpacity();
    goto LABEL_8;
  }

  if (v5 == 3)
  {
    [(AXCaptionStyleChooserController *)self profileId];
    [v8 BOOLValue];
    MACaptionAppearancePrefSetVideoOverrideWindowOpacity();
    goto LABEL_8;
  }

  v6 = v5 == 2;
  v7 = v8;
  if (v6)
  {
    [(AXCaptionStyleChooserController *)self profileId];
    [v8 BOOLValue];
    MACaptionAppearancePrefSetVideoOverrideBackgroundOpacity();
LABEL_8:
    v7 = v8;
  }
}

@end