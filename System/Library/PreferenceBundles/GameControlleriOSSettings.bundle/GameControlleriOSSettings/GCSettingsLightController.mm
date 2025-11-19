@interface GCSettingsLightController
- (GCSettingsLightController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)valueForColorKey:(id)a3;
- (void)loadDevice;
- (void)loadLightData;
- (void)setBrightness:(id)a3 specifier:(id)a4;
- (void)setColor:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation GCSettingsLightController

- (GCSettingsLightController)init
{
  v12.receiver = self;
  v12.super_class = GCSettingsLightController;
  v2 = [(GCSettingsLightController *)&v12 init];
  if (v2)
  {
    v13[0] = @"Red";
    v3 = +[UIColor redColor];
    v14[0] = v3;
    v13[1] = @"Green";
    v4 = +[UIColor greenColor];
    v14[1] = v4;
    v13[2] = @"Blue";
    v5 = +[UIColor blueColor];
    v14[2] = v5;
    v13[3] = @"Yellow";
    v6 = +[UIColor yellowColor];
    v14[3] = v6;
    v13[4] = @"Purple";
    v7 = +[UIColor purpleColor];
    v14[4] = v7;
    v13[5] = @"Orange";
    v8 = +[UIColor orangeColor];
    v14[5] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];
    colors = v2->_colors;
    v2->_colors = v9;
  }

  return v2;
}

- (void)loadDevice
{
  v3 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"Controller"];
  device = self->_device;
  self->_device = v3;

  v5 = self->_device;
  if (v5)
  {
    self->_uniqueIdentifier = [(GCController *)v5 identifier];
  }

  else
  {
    v6 = [(GCSettingsLightController *)self navigationController];
    v7 = [v6 viewControllers];
    v8 = [v7 indexOfObject:self];

    if (!v8 || v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v9 = [(GCSettingsLightController *)self navigationController];
    v10 = [v9 viewControllers];
    v13 = [v10 objectAtIndex:v8 - 1];

    v11 = [(GCSettingsLightController *)self navigationController];
    v12 = [v11 popToViewController:v13 animated:1];
  }

  _objc_release_x1();
}

- (void)setBrightness:(id)a3 specifier:(id)a4
{
  [(NSMutableDictionary *)self->_lightDictionary setObject:a3 forKeyedSubscript:@"brightness"];

  [(GCSettingsLightController *)self saveLight];
}

- (id)valueForColorKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_lightDictionary objectForKeyedSubscript:@"color"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"Red";
  }

  return v5;
}

- (void)setColor:(id)a3
{
  [(NSMutableDictionary *)self->_lightDictionary setObject:a3 forKeyedSubscript:@"color"];
  [(GCSettingsLightController *)self saveLight];
  [(GCSettingsLightController *)self reloadSpecifiers];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"updateColor" object:0];
}

- (void)loadLightData
{
  [(GCSettingsLightController *)self loadDevice];

  [(GCSettingsLightController *)self initDefaults];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v21 = OBJC_IVAR___PSListController__specifiers;
    [(GCSettingsLightController *)self loadLightData];
    v20 = [PSSpecifier groupSpecifierWithName:@"Color"];
    [v3 addObject:?];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_colors;
    v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v7 = PSIDKey;
    if (v6)
    {
      v8 = v6;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:3 edit:0];
          [v12 setProperty:v11 forKey:v7];
          [v3 addObject:v12];
        }

        v8 = [(NSDictionary *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v13 = [PSSpecifier groupSpecifierWithName:@"Brightness"];

    [v3 addObject:v13];
    v14 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setBrightness:specifier:" get:"getBrightness" detail:0 cell:5 edit:0];
    [v14 setObject:@"Brightness" forKeyedSubscript:v7];
    [v14 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    v15 = [NSNumber numberWithFloat:0.0];
    [v14 setProperty:v15 forKey:PSControlMinimumKey];

    LODWORD(v16) = 1.0;
    v17 = [NSNumber numberWithFloat:v16];
    [v14 setProperty:v17 forKey:PSControlMaximumKey];

    [v14 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
    [v3 addObject:v14];
    objc_storeStrong(&self->PSListController_opaque[v21], v3);

    v4 = *&self->PSListController_opaque[v21];
  }

  v18 = v4;

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v26.receiver = self;
  v26.super_class = GCSettingsLightController;
  v6 = a4;
  v24 = [(GCSettingsLightController *)&v26 tableView:a3 cellForRowAtIndexPath:v6];
  v25 = [(GCSettingsLightController *)self specifierAtIndexPath:v6];

  v7 = [v25 propertyForKey:PSIDKey];
  v8 = [(NSDictionary *)self->_colors objectForKeyedSubscript:v7];
  v9 = v7;
  v10 = objc_alloc_init(NSMutableAttributedString);
  v11 = [[UIGraphicsImageRenderer alloc] initWithSize:{15.0, 15.0}];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_8224;
  v27[3] = &unk_106648;
  v28 = v8;
  v12 = v8;
  v13 = [v11 imageWithActions:v27];
  v14 = [[NSTextAttachment alloc] initWithData:0 ofType:0];
  [v14 setImage:v13];
  v15 = [NSAttributedString attributedStringWithAttachment:v14];
  [v10 appendAttributedString:v15];
  v16 = [[NSAttributedString alloc] initWithString:@"\t"];
  [v10 appendAttributedString:v16];

  v17 = [[NSAttributedString alloc] initWithString:v9];
  [v10 appendAttributedString:v17];

  v18 = +[NSParagraphStyle defaultParagraphStyle];
  v19 = [v18 mutableCopy];

  v29 = NSParagraphStyleAttributeName;
  v30 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v10 addAttributes:v20 range:{0, objc_msgSend(v10, "length")}];

  v21 = [v24 titleLabel];
  [v21 setAttributedText:v10];

  v22 = [(GCSettingsLightController *)self valueForColorKey:v9];
  [v24 setChecked:{objc_msgSend(v9, "isEqualToString:", v22)}];

  return v24;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(GCSettingsLightController *)self specifierAtIndexPath:v6];
  v8 = [v9 propertyForKey:PSIDKey];
  [(GCSettingsLightController *)self setColor:v8];
  [(GCSettingsLightController *)self reloadSpecifiers];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

@end