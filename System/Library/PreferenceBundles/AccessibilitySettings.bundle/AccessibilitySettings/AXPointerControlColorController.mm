@interface AXPointerControlColorController
+ (id)localizedNameForColor:(int)color;
- (id)pointerStrokeWidth:(id)width;
- (id)specifiers;
- (void)setPointerStrokeWidth:(id)width specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AXPointerControlColorController

+ (id)localizedNameForColor:(int)color
{
  if (color > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(*(&off_258C08 + color), @"Accessibility-hello");
  }

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXPointerControlColorController;
  [(AXPointerControlColorController *)&v6 viewDidLoad];
  table = [(AXPointerControlColorController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXColorChooserCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v29 = OBJC_IVAR___PSListController__specifiers;
    v33 = +[NSMutableArray array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [objc_opt_class() strokeColorOptions];
    v4 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v32 = *v35;
      v31 = PSCellClassKey;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v34 + 1) + 8 * i);
          v8 = [objc_opt_class() localizedNameForColor:{objc_msgSend(v7, "intValue")}];
          v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          [v9 setProperty:objc_opt_class() forKey:v31];
          [v9 setProperty:v7 forKey:@"ColorKey"];
          if (_AXSPointerStrokeColorValues())
          {
            LODWORD(v10) = 0;
            v11 = [NSNumber numberWithFloat:v10];
            v38[0] = v11;
            LODWORD(v12) = 0;
            v13 = [NSNumber numberWithFloat:v12];
            v38[1] = v13;
            LODWORD(v14) = 0;
            v15 = [NSNumber numberWithFloat:v14];
            v38[2] = v15;
            LODWORD(v16) = 0;
            [NSNumber numberWithFloat:v16];
            v18 = v17 = selfCopy;
            v38[3] = v18;
            v19 = [NSArray arrayWithObjects:v38 count:4];
            [v9 setProperty:v19 forKey:@"rgb"];

            selfCopy = v17;
          }

          [v33 addObject:v9];
        }

        v5 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v5);
    }

    v20 = settingsLocString(@"PointerStrokeWidth", @"Accessibility-hello");
    v21 = [PSSpecifier groupSpecifierWithName:v20];

    [v33 addObject:v21];
    v22 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:"setPointerStrokeWidth:specifier:" get:"pointerStrokeWidth:" detail:0 cell:5 edit:0];
    [v22 setProperty:&__kCFBooleanFalse forKey:PSSliderIsSegmented];
    [v22 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
    LODWORD(v23) = kAXSPointerStrokeColorWidthMinimum;
    v24 = [NSNumber numberWithFloat:v23];
    [v22 setProperty:v24 forKey:PSControlMinimumKey];

    LODWORD(v25) = kAXSPointerStrokeColorWidthMaximum;
    v26 = [NSNumber numberWithFloat:v25];
    [v22 setProperty:v26 forKey:PSControlMaximumKey];

    [v22 setProperty:@"PointerStrokeWidth" forKey:PSIDKey];
    [v33 addObject:v22];
    v27 = *&selfCopy->AXUISettingsBaseListController_opaque[v29];
    *&selfCopy->AXUISettingsBaseListController_opaque[v29] = v33;

    v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v29];
  }

  return v3;
}

- (id)pointerStrokeWidth:(id)width
{
  _AXSPointerStrokeColorWidth();

  return [NSNumber numberWithFloat:?];
}

- (void)setPointerStrokeWidth:(id)width specifier:(id)specifier
{
  floatValue = [width floatValue];

  __AXSPointerSetStrokeColorWidth(floatValue);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(AXPointerControlColorController *)self specifierForIndexPath:path];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v10 = cellCopy;
    intValue = [v9 intValue];
    [v10 setChecked:intValue == _AXSPointerStrokeColor()];
    v12 = _AXSPointerStrokeColorValues();
    v13 = [(AXPointerControlColorController *)self traitCollection:0];
    userInterfaceStyle = [v13 userInterfaceStyle];

    if (v12)
    {
      v15 = intValue == 1;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (userInterfaceStyle == &dword_0 + 2)
    {
      v17 = v12 != 0;
    }

    else
    {
      v17 = v16;
    }

    [v10 setFillCircle:v17];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = AXPointerControlColorController;
  [(AXPointerControlColorController *)&v26 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(AXPointerControlColorController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"ColorKey"];
  v10 = v9;
  if (v9)
  {
    v20 = v8;
    v21 = pathCopy;
    [v9 intValue];
    _AXSPointerSetStrokeColor();
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    visibleCells = [viewCopy visibleCells];
    v12 = [visibleCells countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(visibleCells);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          specifier = [v16 specifier];
          v18 = [specifier propertyForKey:@"ColorKey"];
          v19 = v18;
          if (v18)
          {
            [v16 setChecked:{objc_msgSend(v18, "intValue") == _AXSPointerStrokeColor()}];
          }
        }

        v13 = [visibleCells countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    pathCopy = v21;
    v8 = v20;
  }
}

@end