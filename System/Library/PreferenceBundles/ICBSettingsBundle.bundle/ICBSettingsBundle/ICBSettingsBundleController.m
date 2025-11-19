@interface ICBSettingsBundleController
+ (id)localizedStringForKey:(id)a3;
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3;
- (ICBSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)incomingCallStyleIcon;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleICSPreferencesDidChangeNotification:(id)a3;
- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4;
- (void)performButtonActionForSpecifier:(id)a3;
@end

@implementation ICBSettingsBundleController

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (ICBSettingsBundleController)initWithParentListController:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICBSettingsBundleController;
  v3 = [(ICBSettingsBundleController *)&v7 initWithParentListController:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = +[ICSPreferences sharedPreferences];
    [v4 addObserver:v3 selector:"handleICSPreferencesDidChangeNotification:" name:@"ICSPreferencesDidChangeNotification" object:v5];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  if (_os_feature_enabled_impl())
  {
    v5 = [(ICBSettingsBundleController *)self styleSpecifier];

    if (!v5)
    {
      v6 = [objc_opt_class() localizedStringForKey:@"INCOMING_CALL_STYLE_LIST_TITLE"];
      v7 = [(ICBSettingsBundleController *)self parentListController];
      v8 = [(ICBSettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:v7];

      if (v8)
      {
        v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"incomingCallStyleText:" detail:0 cell:2 edit:0];
        [v9 setButtonAction:"performButtonActionForSpecifier:"];
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"incomingCallStyleText:" detail:objc_opt_class() cell:2 edit:0];
        if (!v9)
        {
LABEL_8:
          [(ICBSettingsBundleController *)self setStyleSpecifier:v9];

          goto LABEL_9;
        }
      }

      [v9 setIdentifier:@"INCOMING_CALL_STYLE"];
      v10 = [(ICBSettingsBundleController *)self incomingCallStyleIcon];
      [v9 setProperty:v10 forKey:PSIconImageKey];

      [v4 addObject:v9];
      goto LABEL_8;
    }
  }

LABEL_9:
  v11 = [v4 copy];

  return v11;
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_8758 table:v6];

  return v7;
}

- (id)incomingCallStyleIcon
{
  v2 = [(ICBSettingsBundleController *)self parentListController];
  v3 = [v2 specifier];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"FACETIME"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (v5)
  {
    v7 = @"incomingcalls_facetime";
  }

  else
  {
    v7 = @"incomingcalls_phone";
  }

  v8 = [UIImage imageNamed:v7 inBundle:v6];

  return v8;
}

- (void)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(ICBSettingsBundleController *)self parentListController];
  [(ICBSettingsBundleController *)self handleUserDidTapOnMainSpecifier:v4 parentController:v5];
}

- (void)handleICSPreferencesDidChangeNotification:(id)a3
{
  v5 = [(ICBSettingsBundleController *)self parentListController];
  v4 = [(ICBSettingsBundleController *)self styleSpecifier];
  [v5 reloadSpecifier:v4];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3
{
  v4 = sub_41BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_41FC();
  sub_41EC();
  sub_41DC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = [v9 traitCollection];
  sub_420C();

  LOBYTE(v10) = sub_419C();
  (*(v5 + 8))(v8, v4);

  return v10 & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4
{
  v19 = sub_41BC();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_422C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_418C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_41FC();
  sub_41EC();
  sub_41DC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = a4;
  sub_421C();
  sub_417C();
  v17 = [v16 traitCollection];
  sub_420C();

  sub_3DCC();
  sub_41AC();

  (*(v5 + 8))(v8, v19);
  (*(v12 + 8))(v15, v11);
}

@end