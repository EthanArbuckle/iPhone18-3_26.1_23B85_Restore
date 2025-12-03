@interface MetalHUDLocationController
- (id)specifiers;
- (void)selectLocation:(id)location;
@end

@implementation MetalHUDLocationController

- (id)specifiers
{
  if (!self->_locations)
  {
    v3 = [MetalHUDLocationPreferences alloc];
    v4 = +[MetalHUDPreferences preferences];
    v5 = [(MetalHUDLocationPreferences *)v3 init:v4];
    locations = self->_locations;
    self->_locations = v5;
  }

  v7 = OBJC_IVAR___PSListController__specifiers;
  v8 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v8)
  {
    v9 = objc_opt_new();
    v10 = [PSSpecifier groupSpecifierWithID:@"METAL_HUD_LOCATION" name:&stru_3E0D8];
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];
    v33 = v9;
    [v9 addObject:v10];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = +[MetalHUDLocationPreferences allLocationCandidates];
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v29 = v10;
      v30 = v7;
      obj = v11;
      v32 = 0;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = [NSBundle bundleForClass:objc_opt_class()];
          v18 = [NSString stringWithFormat:@"METAL_HUD_LOCATION_LOCKEY_%@", v16];
          v19 = [v17 localizedStringForKey:v18 value:&stru_3E0D8 table:@"DTMetalHUD"];
          v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v20 setUserInfo:v16];
          [v20 setButtonAction:"selectLocation:"];
          [v33 addObject:v20];
          location = [(MetalHUDLocationPreferences *)self->_locations location];
          LODWORD(v16) = [v16 isEqualToString:location];

          if (v16)
          {
            v22 = v20;

            v32 = v22;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);

      v10 = v29;
      v7 = v30;
      v23 = v32;
      if (v32)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v23 = [v33 objectAtIndexedSubscript:1];
    if (!v23)
    {
LABEL_18:
      v24 = [v33 copy];
      v25 = *&self->PSListController_opaque[v7];
      *&self->PSListController_opaque[v7] = v24;

      locationGroupSpec = self->_locationGroupSpec;
      self->_locationGroupSpec = v10;
      v27 = v10;

      v8 = *&self->PSListController_opaque[v7];
      goto LABEL_19;
    }

LABEL_17:
    [v10 setProperty:v23 forKey:PSRadioGroupCheckedSpecifierKey];
    goto LABEL_18;
  }

LABEL_19:

  return v8;
}

- (void)selectLocation:(id)location
{
  locationCopy = location;
  userInfo = [locationCopy userInfo];

  if (userInfo)
  {
    locations = self->_locations;
    userInfo2 = [locationCopy userInfo];
    [(MetalHUDLocationPreferences *)locations setLocation:userInfo2];
  }

  [(PSSpecifier *)self->_locationGroupSpec setProperty:locationCopy forKey:PSRadioGroupCheckedSpecifierKey];
  [(MetalHUDLocationController *)self reloadSpecifier:self->_locationGroupSpec];
}

@end