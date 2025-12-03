@interface ASTVirtualTrackpadBorderColorController
- (id)specifiers;
- (id)trackpadBorderColor;
- (id)trackpadBorderWidth;
- (id)trackpadOpacity;
- (void)setTrackpadBorderColor:(id)color;
- (void)setTrackpadBorderWidth:(id)width;
- (void)setTrackpadOpacity:(id)opacity;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation ASTVirtualTrackpadBorderColorController

- (id)specifiers
{
  v15.receiver = self;
  v15.super_class = ASTVirtualTrackpadBorderColorController;
  specifiers = [(ASTVirtualTrackpadColorController *)&v15 specifiers];
  v4 = settingsLocString(@"PointerStrokeWidth", @"Accessibility-hello");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  [specifiers addObject:v5];
  v6 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setTrackpadBorderWidth:" get:"trackpadBorderWidth" detail:0 cell:5 edit:0];
  [v6 setProperty:&__kCFBooleanFalse forKey:PSSliderIsSegmented];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
  if (AXDeviceIsPad())
  {
    v7 = &off_279BD0;
    v8 = &off_279BB8;
LABEL_5:
    [v6 setProperty:v8 forKey:PSControlMinimumKey];
    [v6 setProperty:v7 forKey:PSControlMaximumKey];
    goto LABEL_6;
  }

  if (AXDeviceIsPhone())
  {
    v7 = &off_279C00;
    v8 = &off_279BE8;
    goto LABEL_5;
  }

LABEL_6:
  [v6 setProperty:@"BORDER_WIDTH" forKey:PSIDKey];
  [specifiers addObject:v6];
  v9 = OBJC_IVAR___PSListController__specifiers;
  v10 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = specifiers;
  v11 = specifiers;

  v12 = *&self->super.AXUISettingsBaseListController_opaque[v9];
  v13 = v12;

  return v12;
}

- (id)trackpadOpacity
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadBorderOpacity];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setTrackpadOpacity:(id)opacity
{
  opacityCopy = opacity;
  v6 = +[AXSettings sharedInstance];
  [opacityCopy floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadBorderOpacity:v5];
}

- (id)trackpadBorderWidth
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadBorderWidth];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setTrackpadBorderWidth:(id)width
{
  widthCopy = width;
  v6 = +[AXSettings sharedInstance];
  [widthCopy floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadBorderWidth:v5];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(ASTVirtualTrackpadBorderColorController *)self specifierForIndexPath:path];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v10 = cellCopy;
    intValue = [v9 intValue];
    intValue2 = [v9 intValue];
    trackpadBorderColor = [(ASTVirtualTrackpadBorderColorController *)self trackpadBorderColor];
    [v10 setChecked:{intValue2 == objc_msgSend(trackpadBorderColor, "intValue")}];

    v14 = _ASTVirtualTrackpadColorValues();
    v15 = [(ASTVirtualTrackpadBorderColorController *)self traitCollection:0];
    userInterfaceStyle = [v15 userInterfaceStyle];

    if (v14)
    {
      v17 = intValue == 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (userInterfaceStyle == &dword_0 + 2)
    {
      v19 = v14 != 0;
    }

    else
    {
      v19 = v18;
    }

    [v10 setFillCircle:v19];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = ASTVirtualTrackpadBorderColorController;
  [(ASTVirtualTrackpadBorderColorController *)&v30 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(ASTVirtualTrackpadBorderColorController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v22 = v8;
    v23 = pathCopy;
    selfCopy = self;
    v21 = v9;
    [(ASTVirtualTrackpadBorderColorController *)self setTrackpadBorderColor:v9];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = viewCopy;
    obj = [viewCopy visibleCells];
    v11 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          specifier = [v15 specifier];
          v17 = [specifier propertyForKey:@"ColorKey"];
          v18 = v17;
          if (v17)
          {
            intValue = [v17 intValue];
            trackpadBorderColor = [(ASTVirtualTrackpadBorderColorController *)selfCopy trackpadBorderColor];
            [v15 setChecked:{intValue == objc_msgSend(trackpadBorderColor, "intValue")}];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    pathCopy = v23;
    viewCopy = v24;
    v9 = v21;
    v8 = v22;
  }
}

- (id)trackpadBorderColor
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 assistiveTouchVirtualTrackpadBorderColor]);

  return v3;
}

- (void)setTrackpadBorderColor:(id)color
{
  colorCopy = color;
  v5 = +[AXSettings sharedInstance];
  integerValue = [colorCopy integerValue];

  [v5 setAssistiveTouchVirtualTrackpadBorderColor:integerValue];
}

@end