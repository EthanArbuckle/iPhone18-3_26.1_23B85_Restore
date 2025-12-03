@interface VoiceOverBrailleStatusCellController
- (id)specifiers;
- (id)statusCellGeneralEnabled:(id)enabled;
- (id)statusCellTextStyleEnabled:(id)enabled;
- (void)setEnableStatusCellGeneral:(id)general specifier:(id)specifier;
- (void)setEnableStatusCellTextStyle:(id)style specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverBrailleStatusCellController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v17 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v4 = [(VoiceOverBrailleStatusCellController *)self loadSpecifiersFromPlistName:@"BrailleStatusCellSettings" target:self];
    v5 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v21;
    v9 = PSIDKey;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 propertyForKey:v9];
        if ([v12 isEqualToString:@"StatusCellTextStyle"])
        {

LABEL_10:
          if (_AXSVoiceOverTouchBrailleMasterStatusCellIndex() < 0)
          {
            continue;
          }

          goto LABEL_11;
        }

        v13 = [v11 propertyForKey:v9];
        v14 = [v13 isEqualToString:@"StatusCellGeneral"];

        if (v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        [v5 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v7)
      {
LABEL_14:

        v15 = *&selfCopy->AXUISettingsBaseListController_opaque[v17];
        *&selfCopy->AXUISettingsBaseListController_opaque[v17] = v5;

        v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v17];
        break;
      }
    }
  }

  return v3;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(VoiceOverBrailleStatusCellController *)self specifierForIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 propertyForKey:@"statusCellOption"];
    v9 = _AXSVoiceOverTouchBrailleVirtualStatusAlignment();
    if (_AXSVoiceOverTouchBrailleMasterStatusCellIndex() < 0)
    {
      if ([v8 isEqualToString:@"off"])
      {
LABEL_7:
        v10 = 1;
LABEL_10:
        [cellCopy setChecked:v10];

        goto LABEL_11;
      }
    }

    else if ([v8 isEqualToString:@"left"] && !v9 || objc_msgSend(v8, "isEqualToString:", @"right") && v9 == 1)
    {
      goto LABEL_7;
    }

    v10 = 0;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = VoiceOverBrailleStatusCellController;
  [(VoiceOverBrailleStatusCellController *)&v20 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    visibleCells = [viewCopy visibleCells];
    v10 = [visibleCells countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v16 + 1) + 8 * v13) setChecked:0];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [visibleCells countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    [v8 setChecked:1];
    v14 = [(VoiceOverBrailleStatusCellController *)self specifierForIndexPath:pathCopy];
    v15 = [v14 propertyForKey:@"statusCellOption"];
    if (([v15 isEqualToString:@"left"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"right"))
    {
      _AXSVoiceOverTouchSetBrailleVirtualStatusAlignment();
      _AXSVoiceOverTouchSetBrailleMasterStatusCellIndex();
    }

    [(VoiceOverBrailleStatusCellController *)self reloadSpecifiers];
  }
}

- (void)setEnableStatusCellTextStyle:(id)style specifier:(id)specifier
{
  styleCopy = style;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [styleCopy BOOLValue];

  [v6 setVoiceOverTouchBrailleShowTextStyleStatus:bOOLValue];
}

- (id)statusCellTextStyleEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleShowTextStyleStatus]);

  return v4;
}

- (void)setEnableStatusCellGeneral:(id)general specifier:(id)specifier
{
  generalCopy = general;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [generalCopy BOOLValue];

  [v6 setVoiceOverTouchBrailleShowGeneralStatus:bOOLValue];
}

- (id)statusCellGeneralEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleShowGeneralStatus]);

  return v4;
}

@end