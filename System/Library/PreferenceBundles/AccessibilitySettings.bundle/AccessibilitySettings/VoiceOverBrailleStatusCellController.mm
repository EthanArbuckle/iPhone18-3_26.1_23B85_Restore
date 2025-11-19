@interface VoiceOverBrailleStatusCellController
- (id)specifiers;
- (id)statusCellGeneralEnabled:(id)a3;
- (id)statusCellTextStyleEnabled:(id)a3;
- (void)setEnableStatusCellGeneral:(id)a3 specifier:(id)a4;
- (void)setEnableStatusCellTextStyle:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverBrailleStatusCellController

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v17 = OBJC_IVAR___PSListController__specifiers;
    v18 = self;
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

        v15 = *&v18->AXUISettingsBaseListController_opaque[v17];
        *&v18->AXUISettingsBaseListController_opaque[v17] = v5;

        v3 = *&v18->AXUISettingsBaseListController_opaque[v17];
        break;
      }
    }
  }

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = [(VoiceOverBrailleStatusCellController *)self specifierForIndexPath:a5];
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
        [v11 setChecked:v10];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = VoiceOverBrailleStatusCellController;
  [(VoiceOverBrailleStatusCellController *)&v20 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v6 visibleCells];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v16 + 1) + 8 * v13) setChecked:0];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    [v8 setChecked:1];
    v14 = [(VoiceOverBrailleStatusCellController *)self specifierForIndexPath:v7];
    v15 = [v14 propertyForKey:@"statusCellOption"];
    if (([v15 isEqualToString:@"left"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"right"))
    {
      _AXSVoiceOverTouchSetBrailleVirtualStatusAlignment();
      _AXSVoiceOverTouchSetBrailleMasterStatusCellIndex();
    }

    [(VoiceOverBrailleStatusCellController *)self reloadSpecifiers];
  }
}

- (void)setEnableStatusCellTextStyle:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setVoiceOverTouchBrailleShowTextStyleStatus:v5];
}

- (id)statusCellTextStyleEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleShowTextStyleStatus]);

  return v4;
}

- (void)setEnableStatusCellGeneral:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setVoiceOverTouchBrailleShowGeneralStatus:v5];
}

- (id)statusCellGeneralEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverTouchBrailleShowGeneralStatus]);

  return v4;
}

@end