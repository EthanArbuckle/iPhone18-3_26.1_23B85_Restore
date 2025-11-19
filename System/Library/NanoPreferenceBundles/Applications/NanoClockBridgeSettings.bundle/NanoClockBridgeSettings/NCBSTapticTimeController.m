@interface NCBSTapticTimeController
- (id)_tapticTimeEnabled;
- (id)specifiers;
- (void)_setTapticTimeEnabled:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NCBSTapticTimeController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCBSTapticTimeController;
  [(NCBSTapticTimeController *)&v5 viewDidLoad];
  v3 = +[AXTimeOutputPreferences sharedInstance];
  v4 = [v3 tapticTimeLocalizedTitle];
  [(NCBSTapticTimeController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v30 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[AXTimeOutputPreferences sharedInstance];
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v32 = v5;
    [v5 addObject:v6];

    v7 = [v4 tapticTimeLocalizedTitle];
    v8 = self;
    v9 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"_setTapticTimeEnabled:" get:"_tapticTimeEnabled" detail:0 cell:6 edit:0];

    if (([v4 tapticTimeIsAvailable] & 1) == 0)
    {
      [v9 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    [v32 addObject:v9];
    v10 = [v4 tapticTimeEncodingOptions];
    v11 = +[PSSpecifier emptyGroupSpecifier];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v12 = [v4 tapticTimeModeLocalizedDescription];
    [v11 setProperty:v12 forKey:PSFooterTextGroupKey];

    v28 = v11;
    [v32 addObject:v11];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v29 = v9;
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v34;
      v17 = PSValueKey;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v33 + 1) + 8 * i) integerValue];
          v20 = [v4 localizedStringForTapticTimeEncoding:v19];
          v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:v8 set:0 get:0 detail:0 cell:3 edit:0];

          v22 = [NSNumber numberWithInteger:v19];
          [v21 setProperty:v22 forKey:v17];

          [v32 addObject:v21];
          if ([v4 voiceOverTapticTimeEncoding] == v19)
          {
            v23 = v21;

            v15 = v23;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    [v28 setProperty:v15 forKey:PSRadioGroupCheckedSpecifierKey];
    v24 = v8;
    v25 = *&v8->super.PSListController_opaque[v30];
    *&v24->super.PSListController_opaque[v30] = v32;
    v26 = v32;

    v3 = *&v24->super.PSListController_opaque[v30];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = NCBSTapticTimeController;
  v6 = a4;
  [(NCBSTapticTimeController *)&v18 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(NCBSTapticTimeController *)self indexForIndexPath:v6, v18.receiver, v18.super_class];
  v8 = [(NCBSTapticTimeController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(NCBSTapticTimeController *)self specifierAtIndex:[(NCBSTapticTimeController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:PSIsRadioGroupKey];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:PSValueKey];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 integerValue];
      v17 = +[AXTimeOutputPreferences sharedInstance];
      [v17 setVoiceOverTapticTimeEncoding:v16];

      [(NCBSTapticTimeController *)self reloadSpecifiers];
    }
  }
}

- (void)_setTapticTimeEnabled:(id)a3
{
  v3 = [a3 BOOLValue];
  v4 = +[AXTimeOutputPreferences sharedInstance];
  [v4 setVoiceOverTapticTimeMode:v3];
}

- (id)_tapticTimeEnabled
{
  v2 = +[AXTimeOutputPreferences sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 voiceOverTapticTimeMode]);

  return v3;
}

@end