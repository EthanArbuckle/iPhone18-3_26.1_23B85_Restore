@interface ASTVirtualTrackpadBorderColorController
- (id)specifiers;
- (id)trackpadBorderColor;
- (id)trackpadBorderWidth;
- (id)trackpadOpacity;
- (void)setTrackpadBorderColor:(id)a3;
- (void)setTrackpadBorderWidth:(id)a3;
- (void)setTrackpadOpacity:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation ASTVirtualTrackpadBorderColorController

- (id)specifiers
{
  v15.receiver = self;
  v15.super_class = ASTVirtualTrackpadBorderColorController;
  v3 = [(ASTVirtualTrackpadColorController *)&v15 specifiers];
  v4 = settingsLocString(@"PointerStrokeWidth", @"Accessibility-hello");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  [v3 addObject:v5];
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
  [v3 addObject:v6];
  v9 = OBJC_IVAR___PSListController__specifiers;
  v10 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v11 = v3;

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

- (void)setTrackpadOpacity:(id)a3
{
  v3 = a3;
  v6 = +[AXSettings sharedInstance];
  [v3 floatValue];
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

- (void)setTrackpadBorderWidth:(id)a3
{
  v3 = a3;
  v6 = +[AXSettings sharedInstance];
  [v3 floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadBorderWidth:v5];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = [(ASTVirtualTrackpadBorderColorController *)self specifierForIndexPath:a5];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v10 = v7;
    v11 = [v9 intValue];
    v12 = [v9 intValue];
    v13 = [(ASTVirtualTrackpadBorderColorController *)self trackpadBorderColor];
    [v10 setChecked:{v12 == objc_msgSend(v13, "intValue")}];

    v14 = _ASTVirtualTrackpadColorValues();
    v15 = [(ASTVirtualTrackpadBorderColorController *)self traitCollection:0];
    v16 = [v15 userInterfaceStyle];

    if (v14)
    {
      v17 = v11 == 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (v16 == &dword_0 + 2)
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = ASTVirtualTrackpadBorderColorController;
  [(ASTVirtualTrackpadBorderColorController *)&v30 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(ASTVirtualTrackpadBorderColorController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v22 = v8;
    v23 = v7;
    v10 = self;
    v21 = v9;
    [(ASTVirtualTrackpadBorderColorController *)self setTrackpadBorderColor:v9];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = v6;
    obj = [v6 visibleCells];
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
          v16 = [v15 specifier];
          v17 = [v16 propertyForKey:@"ColorKey"];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 intValue];
            v20 = [(ASTVirtualTrackpadBorderColorController *)v10 trackpadBorderColor];
            [v15 setChecked:{v19 == objc_msgSend(v20, "intValue")}];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    v7 = v23;
    v6 = v24;
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

- (void)setTrackpadBorderColor:(id)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v4 = [v3 integerValue];

  [v5 setAssistiveTouchVirtualTrackpadBorderColor:v4];
}

@end