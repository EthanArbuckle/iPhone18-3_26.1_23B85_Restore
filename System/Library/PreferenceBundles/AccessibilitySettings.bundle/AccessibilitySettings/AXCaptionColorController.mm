@interface AXCaptionColorController
- (id)_videoOverridesStyle:(id)style;
- (id)specifiers;
- (int)colorType;
- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AXCaptionColorController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionColorController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  table = [(AXCaptionColorController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionColorCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (int)colorType
{
  specifier = [(AXCaptionColorController *)self specifier];
  v3 = [specifier propertyForKey:@"colorType"];

  if ([v3 isEqualToString:@"textColor"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"windowColor"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"backgroundColor"])
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
    v21 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    captionPreviewSpecifiers = [(AXCaptionStyleChooserController *)self captionPreviewSpecifiers];
    v24 = v4;
    [v4 addObjectsFromArray:captionPreviewSpecifiers];

    v23 = AXCaptionColorDefault([(AXCaptionColorController *)self colorType]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = AXCaptionColors([(AXCaptionColorController *)self colorType]);
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      v9 = PSCellClassKey;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"name"];
          v13 = settingsLocString(v12, @"CaptioningStyle");
          v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v14 setProperty:objc_opt_class() forKey:v9];
          v15 = [v11 objectForKeyedSubscript:@"rgb"];
          [v14 setProperty:v15 forKey:@"rgb"];

          v16 = [NSNumber numberWithUnsignedInt:[(AXCaptionColorController *)self colorType]];
          [v14 setProperty:v16 forKey:@"colorType"];

          v17 = [v11 objectForKeyedSubscript:@"rgb"];
          LODWORD(v16) = [v23 isEqualToArray:v17];

          if (v16)
          {
            [v14 setProperty:&__kCFBooleanTrue forKey:@"isDefault"];
          }

          [v14 setCellType:3];
          [v24 addObject:v14];
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

    videoOverrideSpecifiers = [(AXCaptionStyleChooserController *)self videoOverrideSpecifiers];
    [v24 addObjectsFromArray:videoOverrideSpecifiers];

    v19 = *&self->super.AXUISettingsBaseListController_opaque[v21];
    *&self->super.AXUISettingsBaseListController_opaque[v21] = v24;

    v3 = *&self->super.AXUISettingsBaseListController_opaque[v21];
  }

  return v3;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = AXCaptionColorController;
  [(AXCaptionStyleChooserController *)&v15 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];
  if ([pathCopy row] || objc_msgSend(pathCopy, "section"))
  {
    v10 = cellCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      colorType = [(AXCaptionColorController *)self colorType];
      specifier = [v10 specifier];
      v13 = [specifier propertyForKey:@"rgb"];
      v14 = [(AXCaptionStyleChooserController *)self isStoredColorType:colorType equalWithColors:v13];

      [v10 setChecked:v14];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = AXCaptionColorController;
  pathCopy = path;
  viewCopy = view;
  [(AXCaptionColorController *)&v21 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];

  specifier = [v8 specifier];

  v10 = [specifier propertyForKey:@"rgb"];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 floatValue];
  v13 = v12;
  v14 = [v10 objectAtIndexedSubscript:1];
  [v14 floatValue];
  v16 = v15;
  v17 = [v10 objectAtIndexedSubscript:2];
  [v17 floatValue];
  v19 = [UIColor colorWithRed:v13 green:v16 blue:v18 alpha:1.0];

  [(AXCaptionColorController *)self colorType];
  v20 = v19;
  AXPerformBlockOnMainThreadAfterDelay();
  [(AXCaptionStyleChooserController *)self updateTableCheckedSelection:pathCopy];
}

uint64_t __62__AXCaptionColorController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  switch(v2)
  {
    case 1:
      v7 = [*(result + 32) profileId];
      v8 = [*(v1 + 40) CGColor];

      return _MACaptionAppearancePrefSetForegroundColor(v7, v8);
    case 3:
      v5 = [*(result + 32) profileId];
      v6 = [*(v1 + 40) CGColor];

      return _MACaptionAppearancePrefSetWindowColor(v5, v6);
    case 2:
      v3 = [*(result + 32) profileId];
      v4 = [*(v1 + 40) CGColor];

      return _MACaptionAppearancePrefSetBackgroundColor(v3, v4);
  }

  return result;
}

- (id)_videoOverridesStyle:(id)style
{
  colorType = [(AXCaptionColorController *)self colorType];
  switch(colorType)
  {
    case 1u:
      [(AXCaptionStyleChooserController *)self profileId];
      v5 = MACaptionAppearancePrefCopyVideoOverrideForegroundColor();
      break;
    case 3u:
      [(AXCaptionStyleChooserController *)self profileId];
      v5 = MACaptionAppearancePrefCopyVideoOverrideWindowColor();
      break;
    case 2u:
      [(AXCaptionStyleChooserController *)self profileId];
      v5 = MACaptionAppearancePrefCopyVideoOverrideBackgroundColor();
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier
{
  styleCopy = style;
  colorType = [(AXCaptionColorController *)self colorType];
  if (colorType == 1)
  {
    [(AXCaptionStyleChooserController *)self profileId];
    [styleCopy BOOLValue];
    MACaptionAppearancePrefSetVideoOverrideForegroundColor();
    goto LABEL_8;
  }

  if (colorType == 3)
  {
    [(AXCaptionStyleChooserController *)self profileId];
    [styleCopy BOOLValue];
    MACaptionAppearancePrefSetVideoOverrideWindowColor();
    goto LABEL_8;
  }

  v6 = colorType == 2;
  v7 = styleCopy;
  if (v6)
  {
    [(AXCaptionStyleChooserController *)self profileId];
    [styleCopy BOOLValue];
    MACaptionAppearancePrefSetVideoOverrideBackgroundColor();
LABEL_8:
    v7 = styleCopy;
  }
}

@end