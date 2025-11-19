@interface ICSSettingsBundleController
+ (id)localizedStringForKey:(id)a3;
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3;
- (ICSSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)announceCallStyleIcon;
- (id)announceCallsLabelText:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4;
- (void)performButtonActionForSpecifier:(id)a3;
- (void)propertiesDidChangeForConfiguration:(id)a3;
@end

@implementation ICSSettingsBundleController

- (ICSSettingsBundleController)initWithParentListController:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICSSettingsBundleController;
  v3 = [(ICSSettingsBundleController *)&v7 initWithParentListController:a3];
  if (v3)
  {
    v4 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v3->_userConfiguration;
    v3->_userConfiguration = v4;

    [(TUUserConfiguration *)v3->_userConfiguration addDelegate:v3 queue:&_dispatch_main_q];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [(ICSSettingsBundleController *)self announceCallsSpecifier];

  if (!v5)
  {
    v6 = [objc_opt_class() localizedStringForKey:@"ANNOUNCE_CALLS_LIST_TITLE"];
    v7 = [(ICSSettingsBundleController *)self parentListController];
    v8 = [(ICSSettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:v7];

    if (v8)
    {
      v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"announceCallsLabelText:" detail:0 cell:2 edit:0];
      [v9 setButtonAction:"performButtonActionForSpecifier:"];
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"announceCallsLabelText:" detail:objc_opt_class() cell:2 edit:0];
      if (!v9)
      {
LABEL_7:
        [(ICSSettingsBundleController *)self setAnnounceCallsSpecifier:v9];

        goto LABEL_8;
      }
    }

    [v9 setIdentifier:@"ANNOUNCE_CALLS"];
    v10 = [(ICSSettingsBundleController *)self announceCallStyleIcon];
    [v9 setProperty:v10 forKey:PSIconImageKey];

    v11 = [(ICSSettingsBundleController *)self userConfiguration];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v9 setProperty:v11 forKey:v13];

    [v4 addObject:v9];
    goto LABEL_7;
  }

LABEL_8:
  v14 = [v4 copy];

  return v14;
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_C9F0 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (id)announceCallsLabelText:(id)a3
{
  v3 = [(ICSSettingsBundleController *)self userConfiguration];
  v4 = +[ICSCallAnnouncementSettingsController localizedlabelTextForAnnounceCallsConfiguration:](ICSCallAnnouncementSettingsController, "localizedlabelTextForAnnounceCallsConfiguration:", [v3 announceCalls]);

  return v4;
}

- (id)announceCallStyleIcon
{
  v2 = [(ICSSettingsBundleController *)self parentListController];
  v3 = [v2 specifier];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"FACETIME"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (v5)
  {
    v7 = @"announcingcalls_facetime";
  }

  else
  {
    v7 = @"announcingcalls_phone";
  }

  v8 = [UIImage imageNamed:v7 inBundle:v6];

  return v8;
}

- (void)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(ICSSettingsBundleController *)self parentListController];
  [(ICSSettingsBundleController *)self handleUserDidTapOnMainSpecifier:v4 parentController:v5];
}

- (void)propertiesDidChangeForConfiguration:(id)a3
{
  v5 = [(ICSSettingsBundleController *)self parentListController];
  v4 = [(ICSSettingsBundleController *)self announceCallsSpecifier];
  [v5 reloadSpecifier:v4];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3
{
  v4 = sub_559C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = [v9 traitCollection];
  sub_561C();

  LOBYTE(v10) = sub_557C();
  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4
{
  v5 = sub_559C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_563C() - 8) + 64);
  __chkstk_darwin();
  v11 = sub_556C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a4;
  sub_562C();
  sub_555C();
  v17 = [v16 traitCollection];
  sub_561C();

  sub_51F4();
  sub_558C();

  (*(v6 + 8))(v9, v5);
  (*(v12 + 8))(v15, v11);
}

@end