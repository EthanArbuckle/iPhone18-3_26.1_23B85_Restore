@interface NCOWiFiDetail
- (NCOWiFiDetail)init;
- (id)specifiers;
- (unsigned)selectedOverride;
- (void)confirmInexpensiveSelection;
- (void)selectDefaultSpecifier:(id)specifier;
- (void)selectExpensiveSpecifier:(id)specifier;
- (void)selectInexpensiveSpecifier:(id)specifier;
@end

@implementation NCOWiFiDetail

- (NCOWiFiDetail)init
{
  v6.receiver = self;
  v6.super_class = NCOWiFiDetail;
  v2 = [(NCOWiFiDetail *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    ncoData = v2->_ncoData;
    v2->_ncoData = v3;
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"NCO_WIFI_COST" value:&stru_3E0D8 table:@"NCOSettings"];
    v8 = [PSSpecifier groupSpecifierWithID:@"NCO_WIFI_DETAIL" name:v7];

    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];
    [v5 addObject:v8];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"NCO_DEFAULT" value:&stru_3E0D8 table:@"NCOSettings"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setButtonAction:"selectDefaultSpecifier:"];
    [v5 addObject:v11];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"NCO_SET_INEXPENSIVE" value:&stru_3E0D8 table:@"NCOSettings"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setButtonAction:"selectInexpensiveSpecifier:"];
    [v5 addObject:v14];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"NCO_SET_EXPENSIVE" value:&stru_3E0D8 table:@"NCOSettings"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setButtonAction:"selectExpensiveSpecifier:"];
    [v5 addObject:v17];
    v18 = v11;
    [(NCOWiFiDetail *)self setCachedValue:[(NCOWiFiDetail *)self selectedOverride]];
    cachedValue = [(NCOWiFiDetail *)self cachedValue];
    v20 = v14;
    if (cachedValue == 1 || (v21 = [(NCOWiFiDetail *)self cachedValue], v20 = v17, v22 = v18, v21 == 2))
    {
      v22 = v20;
    }

    [v8 setProperty:v22 forKey:PSRadioGroupCheckedSpecifierKey];
    v23 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (unsigned)selectedOverride
{
  ncoData = [(NCOWiFiDetail *)self ncoData];
  wifiOverride = [ncoData wifiOverride];

  return wifiOverride;
}

- (void)selectDefaultSpecifier:(id)specifier
{
  if ([(NCOWiFiDetail *)self cachedValue])
  {

    [(NCOWiFiDetail *)self setWifiOverrideValue:0];
  }
}

- (void)selectInexpensiveSpecifier:(id)specifier
{
  if ([(NCOWiFiDetail *)self cachedValue]!= &dword_0 + 1)
  {

    [(NCOWiFiDetail *)self confirmInexpensiveSelection];
  }
}

- (void)selectExpensiveSpecifier:(id)specifier
{
  if ([(NCOWiFiDetail *)self cachedValue]!= &dword_0 + 2)
  {

    [(NCOWiFiDetail *)self setWifiOverrideValue:2];
  }
}

- (void)confirmInexpensiveSelection
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NCO_WIFI_ALERT_TEXT" value:&stru_3E0D8 table:@"NCOSettings"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_11BCC;
  v6[3] = &unk_3D4E8;
  v6[4] = self;
  v5 = [NCOSettings ncoAlertWithText:v4 cancelHandler:0 defaultHandler:v6];

  [(NCOWiFiDetail *)self presentViewController:v5 animated:1 completion:0];
}

@end