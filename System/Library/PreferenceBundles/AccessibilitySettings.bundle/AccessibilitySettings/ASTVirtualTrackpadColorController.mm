@interface ASTVirtualTrackpadColorController
+ (id)localizedNameForColor:(int)color;
- (id)specifiers;
@end

@implementation ASTVirtualTrackpadColorController

+ (id)localizedNameForColor:(int)color
{
  if (color > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(*(&off_2564E0 + color), @"Accessibility-hello");
  }

  return v4;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v26 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = settingsLocString(@"ASTVirtualTrackpadColorTitle", @"Accessibility-hello");
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    v25 = PSIDKey;
    [v6 setProperty:@"COLOR" forKey:?];
    v30 = v4;
    [v4 addObject:v6];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [objc_opt_class() trackpadColorOptions];
    v31 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v31)
    {
      v29 = *v33;
      v28 = PSCellClassKey;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v32 + 1) + 8 * i);
          v9 = [objc_opt_class() localizedNameForColor:{objc_msgSend(v8, "intValue")}];
          v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          [v10 setProperty:objc_opt_class() forKey:v28];
          [v10 setProperty:v8 forKey:@"ColorKey"];
          if (_ASTVirtualTrackpadColorValues())
          {
            LODWORD(v11) = 0;
            v12 = [NSNumber numberWithFloat:v11];
            v36[0] = v12;
            LODWORD(v13) = 0;
            v14 = [NSNumber numberWithFloat:v13];
            v36[1] = v14;
            LODWORD(v15) = 0;
            v16 = [NSNumber numberWithFloat:v15];
            v36[2] = v16;
            LODWORD(v17) = 0;
            v18 = [NSNumber numberWithFloat:v17];
            v36[3] = v18;
            v19 = [NSArray arrayWithObjects:v36 count:4];
            [v10 setProperty:v19 forKey:@"rgb"];
          }

          [v30 addObject:v10];
        }

        v31 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v31);
    }

    v20 = settingsLocString(@"ASTVirtualTrackpadOpacityTitle", @"Accessibility-hello");
    v21 = [PSSpecifier groupSpecifierWithName:v20];

    [v30 addObject:v21];
    v22 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setTrackpadOpacity:" get:"trackpadOpacity" detail:0 cell:5 edit:0];
    [v22 setProperty:&off_27D0E0 forKey:PSControlMinimumKey];
    [v22 setProperty:&off_27D0F0 forKey:PSControlMaximumKey];
    [v22 setProperty:&__kCFBooleanFalse forKey:PSSliderIsSegmented];
    [v22 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
    [v22 setProperty:@"OPACITY" forKey:v25];
    [v30 addObject:v22];
    v23 = *&self->AXUISettingsBaseListController_opaque[v26];
    *&self->AXUISettingsBaseListController_opaque[v26] = v30;

    v3 = *&self->AXUISettingsBaseListController_opaque[v26];
  }

  return v3;
}

@end