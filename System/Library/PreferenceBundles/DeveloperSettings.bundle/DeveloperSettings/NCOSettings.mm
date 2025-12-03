@interface NCOSettings
+ (id)ncoAlertWithText:(id)text cancelHandler:(id)handler defaultHandler:(id)defaultHandler;
- (BOOL)shouldShowExpirationFooter;
- (NCOSettings)init;
- (id)getNCOCellularValue:(id)value;
- (id)getNCOPrefer5GValue:(id)value;
- (id)getNCOWiFiValue:(id)value;
- (id)specifiers;
- (void)reloadNCOGroup;
- (void)reloadPrefer5GSpecifier:(id)specifier;
- (void)setNCOPrefer5GValue:(id)value specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation NCOSettings

- (NCOSettings)init
{
  v14.receiver = self;
  v14.super_class = NCOSettings;
  v2 = [(NCOSettings *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    ncoData = v2->_ncoData;
    v2->_ncoData = v3;

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"NCO_DEFAULT" value:&stru_3E0D8 table:@"NCOSettings"];
    v15[0] = v6;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"NCO_INEXPENSIVE" value:&stru_3E0D8 table:@"NCOSettings"];
    v15[1] = v8;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"NCO_EXPENSIVE" value:&stru_3E0D8 table:@"NCOSettings"];
    v15[2] = v10;
    v11 = [NSArray arrayWithObjects:v15 count:3];
    wifiShortTitles = v2->_wifiShortTitles;
    v2->_wifiShortTitles = v11;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCOSettings;
  [(NCOSettings *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NETWORK_OVERRIDE" value:&stru_3E0D8 table:@"NCOSettings"];
  [(NCOSettings *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    ncoData = [(NCOSettings *)self ncoData];
    isHighDataModeSupported = [ncoData isHighDataModeSupported];

    if (isHighDataModeSupported)
    {
      v8 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:0 get:0 detail:0 cell:0 edit:0];
      [v8 setIdentifier:@"NCO_Group_Id"];
      [v5 addObject:v8];
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"NCO_CELLULAR_COST" value:&stru_3E0D8 table:@"NCOSettings"];
      v24 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"getNCOCellularValue:" detail:objc_opt_class() cell:2 edit:0];

      [v5 addObject:v24];
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"NCO_WIFI_COST" value:&stru_3E0D8 table:@"NCOSettings"];
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"getNCOWiFiValue:" detail:objc_opt_class() cell:2 edit:0];

      [v5 addObject:v13];
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"NCO_PREFER5G" value:&stru_3E0D8 table:@"NCOSettings"];
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setNCOPrefer5GValue:specifier:" get:"getNCOPrefer5GValue:" detail:0 cell:6 edit:0];

      [v5 addObject:v16];
      LODWORD(v14) = [(NCOSettings *)self shouldShowExpirationFooter];
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      if (v14)
      {
        v19 = @"NCO_GROUP_EXPIRE_FOOTER";
      }

      else
      {
        v19 = @"NCO_GROUP_EMPTY_FOOTER";
      }

      v20 = [v17 localizedStringForKey:v19 value:&stru_3E0D8 table:@"NCOSettings"];

      [v8 setProperty:v20 forKey:PSFooterTextGroupKey];
    }

    v21 = [v5 copy];
    v22 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v21;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (BOOL)shouldShowExpirationFooter
{
  if ([(NCOSettings *)self cachedCellularOverrideValue]|| [(NCOSettings *)self cachedWifiOverrideValue]> 0)
  {
    return 1;
  }

  return [(NCOSettings *)self cachedPrefer5GValue];
}

- (void)reloadNCOGroup
{
  ncoData = [(NCOSettings *)self ncoData];
  -[NCOSettings setCachedCellularOverrideValue:](self, "setCachedCellularOverrideValue:", [ncoData isCellularInexpensive]);

  ncoData2 = [(NCOSettings *)self ncoData];
  -[NCOSettings setCachedWifiOverrideValue:](self, "setCachedWifiOverrideValue:", [ncoData2 wifiOverride]);

  ncoData3 = [(NCOSettings *)self ncoData];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10530;
  v6[3] = &unk_3D5D8;
  v6[4] = self;
  [ncoData3 fetchPrefer5GEnabledWithCompletion:v6];
}

- (id)getNCOCellularValue:(id)value
{
  cachedCellularOverrideValue = [(NCOSettings *)self cachedCellularOverrideValue];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (cachedCellularOverrideValue)
  {
    v6 = @"NCO_INEXPENSIVE";
  }

  else
  {
    v6 = @"NCO_DEFAULT";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_3E0D8 table:@"NCOSettings"];

  return v7;
}

- (id)getNCOWiFiValue:(id)value
{
  cachedWifiOverrideValue = [(NCOSettings *)self cachedWifiOverrideValue];
  wifiShortTitles = [(NCOSettings *)self wifiShortTitles];
  v6 = [wifiShortTitles count];

  if (cachedWifiOverrideValue > v6)
  {
    [(NCOSettings *)self setCachedWifiOverrideValue:0];
  }

  wifiShortTitles2 = [(NCOSettings *)self wifiShortTitles];
  v8 = [wifiShortTitles2 objectAtIndexedSubscript:{-[NCOSettings cachedWifiOverrideValue](self, "cachedWifiOverrideValue")}];

  return v8;
}

- (id)getNCOPrefer5GValue:(id)value
{
  cachedPrefer5GValue = [(NCOSettings *)self cachedPrefer5GValue];

  return [NSNumber numberWithBool:cachedPrefer5GValue];
}

- (void)setNCOPrefer5GValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  [specifierCopy setObject:&__kCFBooleanTrue forKeyedSubscript:PSControlIsLoadingKey];
  [(NCOSettings *)self reloadSpecifier:specifierCopy animated:1];
  if ([valueCopy isEqualToNumber:&__kCFBooleanTrue])
  {
    ncoData = [(NCOSettings *)self ncoData];
    isCellularInexpensive = [ncoData isCellularInexpensive];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = v10;
    if (isCellularInexpensive)
    {
      v12 = [v10 localizedStringForKey:@"NCO_PREFER5G_INEXPENSIVE_ALERT_TEXT" value:&stru_3E0D8 table:@"NCOSettings"];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10C88;
      v29[3] = &unk_3D600;
      v29[4] = self;
      v30 = specifierCopy;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10C94;
      v26[3] = &unk_3D628;
      v26[4] = self;
      v27 = valueCopy;
      v28 = v30;
      v13 = [NCOSettings ncoAlertWithText:v12 cancelHandler:v29 defaultHandler:v26];

      [(NCOSettings *)self presentViewController:v13 animated:1 completion:0];
      v14 = v30;
    }

    else
    {
      v15 = [v10 localizedStringForKey:@"NCO_PREFER5G_DEFAULT_ALERT_TEXT" value:&stru_3E0D8 table:@"NCOSettings"];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10D10;
      v24[3] = &unk_3D600;
      v24[4] = self;
      v25 = specifierCopy;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_10D1C;
      v20 = &unk_3D628;
      selfCopy = self;
      v22 = valueCopy;
      v23 = v25;
      v16 = [NCOSettings ncoAlertWithText:v15 cancelHandler:v24 defaultHandler:&v17];

      [(NCOSettings *)self presentViewController:v16 animated:1 completion:0, v17, v18, v19, v20, selfCopy];
      v14 = v25;
    }
  }

  else
  {
    -[NCOSettings enablePrefer5G:specifier:](self, "enablePrefer5G:specifier:", [valueCopy BOOLValue], specifierCopy);
  }
}

- (void)reloadPrefer5GSpecifier:(id)specifier
{
  [specifier setObject:&__kCFBooleanFalse forKeyedSubscript:PSControlIsLoadingKey];

  [(NCOSettings *)self reloadNCOGroup];
}

+ (id)ncoAlertWithText:(id)text cancelHandler:(id)handler defaultHandler:(id)defaultHandler
{
  handlerCopy = handler;
  defaultHandlerCopy = defaultHandler;
  textCopy = text;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NCO_ALERT_TITLE" value:&stru_3E0D8 table:@"NCOSettings"];
  v12 = [UIAlertController alertControllerWithTitle:v11 message:textCopy preferredStyle:1];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"NCO_CANCEL" value:&stru_3E0D8 table:@"NCOSettings"];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_112C0;
  v27[3] = &unk_3D650;
  v28 = handlerCopy;
  v15 = handlerCopy;
  v16 = [UIAlertAction actionWithTitle:v14 style:1 handler:v27];

  [v12 addAction:v16];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"NCO_CONTINUE" value:&stru_3E0D8 table:@"NCOSettings"];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_112D8;
  v25 = &unk_3D650;
  v26 = defaultHandlerCopy;
  v19 = defaultHandlerCopy;
  v20 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v22];

  [v12 addAction:{v20, v22, v23, v24, v25}];
  [v12 setPreferredAction:v20];

  return v12;
}

@end