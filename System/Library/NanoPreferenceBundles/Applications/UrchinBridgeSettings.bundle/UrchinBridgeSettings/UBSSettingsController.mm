@interface UBSSettingsController
+ (void)initialize;
- (UBSSettingsController)init;
- (id)specifiers;
@end

@implementation UBSSettingsController

+ (void)initialize
{
  if (qword_11540 != -1)
  {
    sub_5F20();
  }
}

- (UBSSettingsController)init
{
  v8.receiver = self;
  v8.super_class = UBSSettingsController;
  v2 = [(UBSSettingsController *)&v8 init];
  if (v2)
  {
    v3 = +[USLocationWrapper shared];
    [(UBSSettingsController *)v2 setModel:v3];

    v4 = [(UBSSettingsController *)v2 model];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_186C;
    v6[3] = &unk_C538;
    v7 = v2;
    [v4 loadLocationsWithCompletion:v6];
  }

  return v2;
}

- (id)specifiers
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = objc_opt_new();
    goto LABEL_5;
  }

  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v8 = objc_opt_new();
  v9 = +[PSSpecifier emptyGroupSpecifier];
  v10 = +[UBSLocalizedString shared];
  v11 = [v10 stringForKey:@"DEFAULT_LOCATION_NOTE_COMPLICATION"];

  [v9 setProperty:v11 forKey:PSFooterTextGroupKey];
  v12 = +[UBSLocalizedString shared];
  v13 = [v12 stringForKey:@"DEFAULT_LOCATION"];

  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"defaultLocation:" detail:objc_opt_class() cell:2 edit:0];
  [v14 setIdentifier:@"DEFAULT_LOCATION_SPECIFIER_ID"];
  v18[0] = v9;
  v18[1] = v14;
  v15 = [NSArray arrayWithObjects:v18 count:2];
  [v8 addObjectsFromArray:v15];

  v16 = [v8 copy];
  v17 = *&self->PSListController_opaque[v3];
  *&self->PSListController_opaque[v3] = v16;

  v6 = *&self->PSListController_opaque[v3];
LABEL_6:

  return v6;
}

@end