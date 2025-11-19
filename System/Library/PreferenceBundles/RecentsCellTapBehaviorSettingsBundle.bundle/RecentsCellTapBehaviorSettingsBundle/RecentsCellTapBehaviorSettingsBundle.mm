void sub_CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_CFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

ntation RecentsCellTapBehaviorSettingsBundle

- (RecentsCellTapBehaviorSettingsBundle)initWithParentListController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RecentsCellTapBehaviorSettingsBundle;
  v5 = [(RecentsCellTapBehaviorSettingsBundle *)&v11 initWithParentListController:v4];
  if (v5)
  {
    objc_initWeak(&location, v4);
    v6 = +[CAUILayoutManager shared];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_CFC;
    v8[3] = &unk_4100;
    objc_copyWeak(&v9, &location);
    [v6 addObserver:v5 initialUpdate:0 onUpdate:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = objc_opt_new();
  v6 = [v5 phoneClassicEnabled];

  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = +[CAUILayoutManager shared];
  if (![v7 current])
  {

    goto LABEL_12;
  }

  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9)
  {
LABEL_12:
    v15 = v4;
    goto LABEL_13;
  }

  v10 = [(RecentsCellTapBehaviorSettingsBundle *)self activeSpecifier];

  if (!v10)
  {
    v11 = [PSSpecifier groupSpecifierWithID:@"RecentsCellTapBehaviorSettingsGroup" name:&stru_4140];
    [(RecentsCellTapBehaviorSettingsBundle *)self setActiveSpecifier:v11];
    v12 = [RecentsCellTapBehaviorSettingsBundle localizedStringForKey:@"TAP_RECENT_TO_CALL"];
    v13 = [RecentsCellTapBehaviorSettingsBundle localizedStringForKey:@"SUBTITLE"];
    [v11 setProperty:v13 forKey:PSFooterTextGroupKey];
    if (v11)
    {
      [v4 addObject:v11];
      v14 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setMainSwitchOn:specifier:" get:"mainSwitchOn:" detail:0 cell:6 edit:0];
      if (v14)
      {
        [v4 addObject:v14];
      }
    }
  }

  v15 = [v4 copy];
LABEL_13:
  v16 = v15;

  return v16;
}

+ (id)localizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_4140 table:@"Localizable"];

  return v5;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (id)mainSwitchOn:(id)a3
{
  v3 = +[CAUILayoutManager shared];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 tapRecentsToCall]);

  return v4;
}

- (void)setMainSwitchOn:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CAUILayoutManager shared];
  [v5 setTapRecentsToCall:v4];
}

- (void)handleSettingDidChangeNotification:(id)a3
{
  v5 = [(RecentsCellTapBehaviorSettingsBundle *)self parentListController];
  v4 = [(RecentsCellTapBehaviorSettingsBundle *)self activeSpecifier];
  [v5 reloadSpecifier:v4];
}

@end