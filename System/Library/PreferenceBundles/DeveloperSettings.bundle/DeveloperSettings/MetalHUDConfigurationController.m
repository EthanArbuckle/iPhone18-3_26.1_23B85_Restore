@interface MetalHUDConfigurationController
- (MetalHUDConfigurationController)init;
- (id)_sliderIconImageWithSymbolName:(id)a3 scale:(int64_t)a4;
- (id)getOpacity:(id)a3;
- (id)getScale:(id)a3;
- (id)isElementEnabled:(id)a3;
- (id)specifiers;
- (void)setElementEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setOpacity:(id)a3 forSpecifier:(id)a4;
- (void)setScale:(id)a3 forSpecifier:(id)a4;
- (void)setToDefault:(id)a3;
@end

@implementation MetalHUDConfigurationController

- (MetalHUDConfigurationController)init
{
  v12.receiver = self;
  v12.super_class = MetalHUDConfigurationController;
  v2 = [(MetalHUDConfigurationController *)&v12 init];
  if (v2)
  {
    v3 = [MetalHUDElementListPreferences alloc];
    v4 = +[MetalHUDPreferences preferences];
    v5 = [(MetalHUDElementListPreferences *)v3 init:v4];
    elementList = v2->_elementList;
    v2->_elementList = v5;

    v7 = +[MetalHUDNumberPreferences opacity];
    opacity = v2->_opacity;
    v2->_opacity = v7;

    v9 = +[MetalHUDNumberPreferences scale];
    scale = v2->_scale;
    v2->_scale = v9;
  }

  return v2;
}

- (id)_sliderIconImageWithSymbolName:(id)a3 scale:(int64_t)a4
{
  v4 = [UIImage systemImageNamed:a3, a4];
  v5 = +[UIColor secondaryLabelColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];

  [v6 size];
  v8 = 24.0 / v7;
  [v6 size];
  v10 = 24.0 / v9;
  if (v8 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  [v6 size];
  v13 = v12 * v11;
  [v6 size];
  v15 = v14 * v11;
  v19.width = 24.0;
  v19.height = 24.0;
  UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
  [v6 drawInRect:{(24.0 - v13) * 0.5, (24.0 - v15) * 0.5, v13, v15}];
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v54 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_opt_new();
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"METAL_HUD_LOCATION" value:&stru_3E0D8 table:@"DTMetalHUD"];
    [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v7 = v58 = self;

    [v4 addObject:v7];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"METAL_HUD_LOCATION_LINK" value:&stru_3E0D8 table:@"DTMetalHUD"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v4 addObject:v10];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"METAL_HUD_OPACITY" value:&stru_3E0D8 table:@"DTMetalHUD"];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:0 edit:0];
    opacityGroupSpec = self->_opacityGroupSpec;
    self->_opacityGroupSpec = v13;

    [v4 addObject:self->_opacityGroupSpec];
    v15 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:"setOpacity:forSpecifier:" get:"getOpacity:" detail:0 cell:5 edit:0];
    v57 = PSControlMinimumKey;
    [v15 setObject:&off_415D8 forKeyedSubscript:?];
    obja = PSControlMaximumKey;
    [v15 setObject:&off_415E8 forKeyedSubscript:?];
    v16 = PSSliderIsContinuous;
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:PSSliderIsContinuous];
    v17 = [(MetalHUDConfigurationController *)self _sliderIconImageWithSymbolName:@"sunglasses" scale:-1];
    v18 = PSSliderLeftImageKey;
    [v15 setObject:v17 forKeyedSubscript:PSSliderLeftImageKey];

    v19 = [(MetalHUDConfigurationController *)self _sliderIconImageWithSymbolName:@"sunglasses.fill" scale:-1];
    v20 = PSSliderRightImageKey;
    [v15 setObject:v19 forKeyedSubscript:PSSliderRightImageKey];

    [v4 addObject:v15];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"METAL_HUD_SCALE" value:&stru_3E0D8 table:@"DTMetalHUD"];
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:0 edit:0];
    scaleGroupSpec = self->_scaleGroupSpec;
    self->_scaleGroupSpec = v23;

    [v4 addObject:self->_scaleGroupSpec];
    v25 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:"setScale:forSpecifier:" get:"getScale:" detail:0 cell:5 edit:0];
    [v25 setObject:&off_415F8 forKeyedSubscript:v57];
    [v25 setObject:&off_415E8 forKeyedSubscript:obja];
    [v25 setObject:&__kCFBooleanTrue forKeyedSubscript:v16];
    v26 = [(MetalHUDConfigurationController *)self _sliderIconImageWithSymbolName:@"arrow.up.right.and.arrow.down.left.square" scale:1];
    [v25 setObject:v26 forKeyedSubscript:v18];

    v27 = [(MetalHUDConfigurationController *)self _sliderIconImageWithSymbolName:@"arrow.down.backward.and.arrow.up.forward.square" scale:1];
    [v25 setObject:v27 forKeyedSubscript:v20];

    [v4 addObject:v25];
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"METAL_HUD_ELEMENT_LIST" value:&stru_3E0D8 table:@"DTMetalHUD"];
    v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:0 cell:0 edit:0];
    elementListGroupSpec = self->_elementListGroupSpec;
    self->_elementListGroupSpec = v30;

    [v4 addObject:self->_elementListGroupSpec];
    v32 = [NSBundle bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"METAL_HUD_ELEMENT_LIST_RESET_METRIC_VALUES" value:&stru_3E0D8 table:@"DTMetalHUD"];
    v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v35 = v58;
    [v34 setButtonAction:"resetMetricValues:"];
    v53 = v34;
    [v4 addObject:v34];
    +[MetalHUDElementListPreferences allElementCandidates];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v62 = 0u;
    v36 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v60;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v60 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v59 + 1) + 8 * i);
          v41 = [NSBundle bundleForClass:objc_opt_class()];
          v42 = [NSString stringWithFormat:@"METAL_HUD_ELEMENT_LOCKEY_%@", v40];
          v43 = [v41 localizedStringForKey:v42 value:&stru_3E0D8 table:@"DTMetalHUD"];

          v35 = v58;
          if (v43)
          {
            v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:v58 set:"setElementEnabled:forSpecifier:" get:"isElementEnabled:" detail:0 cell:6 edit:0];
            [v44 setUserInfo:v40];
            [v4 addObject:v44];
          }
        }

        v37 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v37);
    }

    v45 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:v35 set:0 get:0 detail:0 cell:0 edit:0];
    [v4 addObject:v45];
    v46 = v35;
    v47 = [NSBundle bundleForClass:objc_opt_class()];
    v48 = [v47 localizedStringForKey:@"METAL_HUD_ELEMENT_LIST_SET_TO_DEFAULT" value:&stru_3E0D8 table:@"DTMetalHUD"];
    v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:v46 set:0 get:0 detail:0 cell:13 edit:0];

    [v49 setButtonAction:"setToDefault:"];
    [v4 addObject:v49];

    v50 = [v4 copy];
    v51 = *&v46->PSListController_opaque[v54];
    *&v46->PSListController_opaque[v54] = v50;

    v3 = *&v46->PSListController_opaque[v54];
  }

  return v3;
}

- (void)setToDefault:(id)a3
{
  [(MetalHUDElementListPreferences *)self->_elementList setToDefault];
  [(MetalHUDNumberPreferences *)self->_scale setToDefault];
  [(MetalHUDNumberPreferences *)self->_opacity setToDefault];

  [(MetalHUDConfigurationController *)self reloadSpecifiers];
}

- (id)isElementEnabled:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];

  if (v5)
  {
    elementList = self->_elementList;
    v7 = [v4 userInfo];
    v8 = [NSNumber numberWithBool:[(MetalHUDElementListPreferences *)elementList isElementEnabled:v7]];
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  return v8;
}

- (void)setElementEnabled:(id)a3 forSpecifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 userInfo];

  if (v7)
  {
    elementList = self->_elementList;
    v9 = [v6 userInfo];
    -[MetalHUDElementListPreferences setElementEnabled:enabled:](elementList, "setElementEnabled:enabled:", v9, [v10 BOOLValue]);
  }
}

- (void)setOpacity:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  [v5 floatValue];
  v6 = [NSNumber numberWithFloat:?];
  [(MetalHUDNumberPreferences *)self->_opacity setValue:v6];

  v7 = __stderrp;
  [v5 floatValue];
  v9 = v8;

  fprintf(v7, "%.2f", v9);
}

- (id)getOpacity:(id)a3
{
  v4 = __stderrp;
  v5 = [(MetalHUDNumberPreferences *)self->_opacity value];
  [v5 floatValue];
  fprintf(v4, "%.2f", v6);

  v7 = [(MetalHUDNumberPreferences *)self->_opacity value];
  [v7 floatValue];
  v8 = [NSNumber numberWithFloat:?];

  return v8;
}

- (void)setScale:(id)a3 forSpecifier:(id)a4
{
  [a3 floatValue];
  v5 = [NSNumber numberWithFloat:?];
  [(MetalHUDNumberPreferences *)self->_scale setValue:v5];
}

- (id)getScale:(id)a3
{
  v3 = [(MetalHUDNumberPreferences *)self->_scale value];
  [v3 floatValue];
  v4 = [NSNumber numberWithFloat:?];

  return v4;
}

@end