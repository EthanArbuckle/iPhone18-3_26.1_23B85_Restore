@interface NCOCellularDetail
- (NCOCellularDetail)init;
- (id)specifiers;
- (void)confirmInexpensiveSelection;
- (void)selectDefaultSpecifier:(id)a3;
- (void)selectInexpensiveSpecifier:(id)a3;
@end

@implementation NCOCellularDetail

- (NCOCellularDetail)init
{
  v6.receiver = self;
  v6.super_class = NCOCellularDetail;
  v2 = [(NCOCellularDetail *)&v6 init];
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
    v7 = [v6 localizedStringForKey:@"NCO_CELLULAR_COST" value:&stru_3E0D8 table:@"NCOSettings"];
    v8 = [PSSpecifier groupSpecifierWithID:@"NCO_CELLULAR_DETAIL" name:v7];

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
    v15 = [(NCOCellularDetail *)self ncoData];
    -[NCOCellularDetail setCachedValue:](self, "setCachedValue:", [v15 isCellularInexpensive]);

    if ([(NCOCellularDetail *)self cachedValue])
    {
      v16 = v14;
    }

    else
    {
      v16 = v11;
    }

    [v8 setProperty:v16 forKey:PSRadioGroupCheckedSpecifierKey];
    v17 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)selectDefaultSpecifier:(id)a3
{
  if ([(NCOCellularDetail *)self cachedValue])
  {

    [(NCOCellularDetail *)self updateCellularToInexpensive:0];
  }
}

- (void)selectInexpensiveSpecifier:(id)a3
{
  if (![(NCOCellularDetail *)self cachedValue])
  {

    [(NCOCellularDetail *)self confirmInexpensiveSelection];
  }
}

- (void)confirmInexpensiveSelection
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NCO_CELLULAR_ALERT_TEXT" value:&stru_3E0D8 table:@"NCOSettings"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_EF70;
  v6[3] = &unk_3D4E8;
  v6[4] = self;
  v5 = [NCOSettings ncoAlertWithText:v4 cancelHandler:0 defaultHandler:v6];

  [(NCOCellularDetail *)self presentViewController:v5 animated:1 completion:0];
}

@end