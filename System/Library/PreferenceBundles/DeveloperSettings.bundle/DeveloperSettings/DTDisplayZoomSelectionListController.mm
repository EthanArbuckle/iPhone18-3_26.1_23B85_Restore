@interface DTDisplayZoomSelectionListController
- (id)specifiers;
- (void)_updateNavigationButtonStateWithNewOption:(unint64_t)a3;
- (void)_userDidConfirmDisplayZoomModeWithSpecifier:(id)a3;
- (void)_userDidSelectSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation DTDisplayZoomSelectionListController

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = DTDisplayZoomSelectionListController;
  [(DTDisplayZoomSelectionListController *)&v24 viewDidLoad];
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_2DA0;
  v21[3] = &unk_3CFC8;
  objc_copyWeak(&v22, &location);
  v3 = objc_retainBlock(v21);
  v4 = [UIBarButtonItem alloc];
  v5 = sub_19C60(@"SET");
  v6 = [UIAction actionWithTitle:v5 image:0 identifier:0 handler:v3];
  v7 = [v4 initWithPrimaryAction:v6];
  v8 = [(DTDisplayZoomSelectionListController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = +[UIDevice currentDevice];
  LODWORD(v6) = [v9 sf_isiPad];

  if (v6)
  {
    v10 = [UIBarButtonItem alloc];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_2FC4;
    v19[3] = &unk_3CFC8;
    objc_copyWeak(&v20, &location);
    v11 = [UIAction actionWithHandler:v19];
    v12 = [v10 initWithBarButtonSystemItem:1 primaryAction:v11];
    v13 = [(DTDisplayZoomSelectionListController *)self navigationItem];
    [v13 setLeftBarButtonItem:v12];

    objc_destroyWeak(&v20);
  }

  v14 = +[DBSDisplayZoomConfigurationController defaultController];
  v15 = [v14 currentDisplayZoomMode];
  -[DTDisplayZoomSelectionListController _updateNavigationButtonStateWithNewOption:](self, "_updateNavigationButtonStateWithNewOption:", [v15 displayZoomOption]);

  v16 = sub_19C60(@"DISPLAY_ZOOM");
  [(DTDisplayZoomSelectionListController *)self setTitle:v16];

  v17 = +[DBSDisplayZoomConfigurationController defaultController];
  v18 = [v17 currentDisplayZoomMode];
  -[DTDisplayZoomSelectionListController setSelectedDisplayZoomOption:](self, "setSelectedDisplayZoomOption:", [v18 displayZoomOption]);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v22 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier groupSpecifierWithID:@"DISPLAY_ZOOM" name:&stru_3E0D8];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];
    v24 = v5;
    [v4 addObject:v5];
    v6 = +[DBSDisplayZoomConfigurationController defaultController];
    v7 = [v6 displayZoomModes];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_3448;
    v29[3] = &unk_3CFF0;
    v23 = self;
    v29[4] = self;
    v8 = [v7 na_dictionaryByMappingValues:v29];

    v9 = +[DBSDisplayZoomConfigurationController defaultController];
    v10 = [v9 currentDisplayZoomMode];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [&off_41528 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      v14 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(&off_41528);
          }

          v16 = [*(*(&v25 + 1) + 8 * v15) unsignedIntegerValue];
          v17 = DBSStringForDisplayZoomOption();
          v18 = [v8 objectForKeyedSubscript:v17];
          if (v16 == [v10 displayZoomOption])
          {
            [v24 setObject:v18 forKeyedSubscript:v14];
          }

          [v4 na_safeAddObject:v18];

          v15 = v15 + 1;
        }

        while (v12 != v15);
        v12 = [&off_41528 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }

    v19 = *&v23->PSListController_opaque[v22];
    *&v23->PSListController_opaque[v22] = v4;
    v20 = v4;

    v3 = *&v23->PSListController_opaque[v22];
  }

  return v3;
}

- (void)_userDidSelectSpecifier:(id)a3
{
  v4 = a3;
  v7 = [v4 objectForKeyedSubscript:@"displayZoomMode"];
  v5 = [(DTDisplayZoomSelectionListController *)self specifierForID:@"DISPLAY_ZOOM"];
  [v5 setProperty:v4 forKey:PSRadioGroupCheckedSpecifierKey];

  v6 = [(DTDisplayZoomSelectionListController *)self specifierForID:@"DISPLAY_ZOOM"];
  [(DTDisplayZoomSelectionListController *)self reloadSpecifier:v6 animated:1];

  -[DTDisplayZoomSelectionListController _updateNavigationButtonStateWithNewOption:](self, "_updateNavigationButtonStateWithNewOption:", [v7 displayZoomOption]);
}

- (void)_updateNavigationButtonStateWithNewOption:(unint64_t)a3
{
  v5 = +[DBSDisplayZoomConfigurationController defaultController];
  v6 = [v5 currentDisplayZoomMode];
  v7 = [v6 displayZoomOption];

  [(DTDisplayZoomSelectionListController *)self setSelectedDisplayZoomOption:a3];
  v9 = [(DTDisplayZoomSelectionListController *)self navigationItem];
  v8 = [v9 rightBarButtonItem];
  [v8 setEnabled:v7 != a3];
}

- (void)_userDidConfirmDisplayZoomModeWithSpecifier:(id)a3
{
  v3 = [(DTDisplayZoomSelectionListController *)self specifierForID:@"DISPLAY_ZOOM"];
  v7 = [v3 objectForKeyedSubscript:PSRadioGroupCheckedSpecifierKey];

  v4 = [v7 objectForKeyedSubscript:@"displayZoomMode"];
  v5 = +[DBSDisplayZoomConfigurationController defaultController];
  v6 = [NSURL URLWithString:@"prefs:root=DEVELOPER_SETTINGS&path=MAGNIFY"];
  [v5 setDisplayZoomMode:v4 withRelaunchURL:v6];
}

@end