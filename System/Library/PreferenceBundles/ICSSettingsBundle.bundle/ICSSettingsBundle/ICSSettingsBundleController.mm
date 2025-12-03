@interface ICSSettingsBundleController
+ (id)localizedStringForKey:(id)key;
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller;
- (ICSSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)announceCallStyleIcon;
- (id)announceCallsLabelText:(id)text;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller;
- (void)performButtonActionForSpecifier:(id)specifier;
- (void)propertiesDidChangeForConfiguration:(id)configuration;
@end

@implementation ICSSettingsBundleController

- (ICSSettingsBundleController)initWithParentListController:(id)controller
{
  v7.receiver = self;
  v7.super_class = ICSSettingsBundleController;
  v3 = [(ICSSettingsBundleController *)&v7 initWithParentListController:controller];
  if (v3)
  {
    v4 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v3->_userConfiguration;
    v3->_userConfiguration = v4;

    [(TUUserConfiguration *)v3->_userConfiguration addDelegate:v3 queue:&_dispatch_main_q];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = +[NSMutableArray array];
  announceCallsSpecifier = [(ICSSettingsBundleController *)self announceCallsSpecifier];

  if (!announceCallsSpecifier)
  {
    v6 = [objc_opt_class() localizedStringForKey:@"ANNOUNCE_CALLS_LIST_TITLE"];
    parentListController = [(ICSSettingsBundleController *)self parentListController];
    v8 = [(ICSSettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:parentListController];

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
    announceCallStyleIcon = [(ICSSettingsBundleController *)self announceCallStyleIcon];
    [v9 setProperty:announceCallStyleIcon forKey:PSIconImageKey];

    userConfiguration = [(ICSSettingsBundleController *)self userConfiguration];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v9 setProperty:userConfiguration forKey:v13];

    [v4 addObject:v9];
    goto LABEL_7;
  }

LABEL_8:
  v14 = [v4 copy];

  return v14;
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_C9F0 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (id)announceCallsLabelText:(id)text
{
  userConfiguration = [(ICSSettingsBundleController *)self userConfiguration];
  v4 = +[ICSCallAnnouncementSettingsController localizedlabelTextForAnnounceCallsConfiguration:](ICSCallAnnouncementSettingsController, "localizedlabelTextForAnnounceCallsConfiguration:", [userConfiguration announceCalls]);

  return v4;
}

- (id)announceCallStyleIcon
{
  parentListController = [(ICSSettingsBundleController *)self parentListController];
  specifier = [parentListController specifier];
  identifier = [specifier identifier];
  v5 = [identifier isEqualToString:@"FACETIME"];

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

- (void)performButtonActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  parentListController = [(ICSSettingsBundleController *)self parentListController];
  [(ICSSettingsBundleController *)self handleUserDidTapOnMainSpecifier:specifierCopy parentController:parentListController];
}

- (void)propertiesDidChangeForConfiguration:(id)configuration
{
  parentListController = [(ICSSettingsBundleController *)self parentListController];
  announceCallsSpecifier = [(ICSSettingsBundleController *)self announceCallsSpecifier];
  [parentListController reloadSpecifier:announceCallsSpecifier];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller
{
  v4 = sub_559C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  sub_561C();

  LOBYTE(traitCollection) = sub_557C();
  (*(v5 + 8))(v8, v4);
  return traitCollection & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller
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
  controllerCopy = controller;
  sub_562C();
  sub_555C();
  traitCollection = [controllerCopy traitCollection];
  sub_561C();

  sub_51F4();
  sub_558C();

  (*(v6 + 8))(v9, v5);
  (*(v12 + 8))(v15, v11);
}

@end