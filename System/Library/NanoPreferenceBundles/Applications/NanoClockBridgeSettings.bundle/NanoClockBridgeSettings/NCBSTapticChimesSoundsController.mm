@interface NCBSTapticChimesSoundsController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NCBSTapticChimesSoundsController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCBSTapticChimesSoundsController;
  [(NCBSTapticChimesSoundsController *)&v5 viewDidLoad];
  v3 = +[AXTimeOutputPreferences sharedInstance];
  v4 = [v3 tapticChimesSoundsLocalizedTitle];
  [(NCBSTapticChimesSoundsController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v23 = OBJC_IVAR___PSListController__specifiers;
    v25 = self;
    v4 = +[AXTimeOutputPreferences sharedInstance];
    v5 = [v4 tapticChimesSoundsOptions];
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count] + 1);
    v7 = +[PSSpecifier emptyGroupSpecifier];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v22 = v7;
    [v6 addObject:v7];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v27;
      v12 = PSValueKey;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v26 + 1) + 8 * i) integerValue];
          v15 = [v4 localizedStringForTapticChimesSoundType:v14];
          v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:v25 set:0 get:0 detail:0 cell:3 edit:0];

          v17 = [NSNumber numberWithInteger:v14];
          [v16 setProperty:v17 forKey:v12];

          [v6 addObject:v16];
          if ([v4 voiceOverTapticChimesSoundType] == v14)
          {
            v18 = v16;

            v10 = v18;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    [v22 setProperty:v10 forKey:PSRadioGroupCheckedSpecifierKey];
    v19 = *&v25->super.PSListController_opaque[v23];
    *&v25->super.PSListController_opaque[v23] = v6;
    v20 = v6;

    v3 = *&v25->super.PSListController_opaque[v23];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = NCBSTapticChimesSoundsController;
  v6 = a4;
  [(NCBSTapticChimesSoundsController *)&v18 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(NCBSTapticChimesSoundsController *)self indexForIndexPath:v6, v18.receiver, v18.super_class];
  v8 = [(NCBSTapticChimesSoundsController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(NCBSTapticChimesSoundsController *)self specifierAtIndex:[(NCBSTapticChimesSoundsController *)self indexOfGroup:v10]];
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
      [v17 setVoiceOverTapticChimesSoundType:v16];

      [(NCBSTapticChimesSoundsController *)self reloadSpecifiers];
    }
  }
}

@end