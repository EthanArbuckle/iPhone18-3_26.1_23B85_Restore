@interface COSSoftwareUpdateAutomaticUpdateContoller
- (id)automaticUpdateStatus;
- (id)specifiers;
- (void)armedAutoUpdateForAutomaticUpdatesToggled:(id)a3 forSpecifier:(id)a4;
@end

@implementation COSSoftwareUpdateAutomaticUpdateContoller

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"AUTOMATIC_UPDATES_DETAIL_GROUP"];
    [(COSSoftwareUpdateAutomaticUpdateContoller *)self setAutomaticUpdateGroup:v6];

    v7 = [NSMutableArray alloc];
    v8 = [(COSSoftwareUpdateAutomaticUpdateContoller *)self automaticUpdateGroup];
    v9 = [v7 initWithObjects:{v8, 0}];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_10026E598 table:@"Software Update"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"armedAutoUpdateForAutomaticUpdatesToggled:forSpecifier:" get:"automaticUpdateStatus" detail:0 cell:6 edit:0];
    [(COSSoftwareUpdateAutomaticUpdateContoller *)self setAutomaticUpdateSwitchSpecifier:v12];

    v13 = +[NSBundle mainBundle];
    v14 = SFLocalizableWAPIStringKeyForKey();
    v15 = [v13 localizedStringForKey:v14 value:&stru_10026E598 table:@"Software Update"];

    v16 = [(COSSoftwareUpdateAutomaticUpdateContoller *)self automaticUpdateGroup];
    [v16 setProperty:v15 forKey:PSFooterTextGroupKey];

    v17 = [(COSSoftwareUpdateAutomaticUpdateContoller *)self automaticUpdateSwitchSpecifier];
    [v9 addObject:v17];

    v18 = *&self->BPSListController_opaque[v2];
    *&self->BPSListController_opaque[v2] = v9;
    v19 = v9;

    v4 = *&self->BPSListController_opaque[v2];
  }

  return v4;
}

- (void)armedAutoUpdateForAutomaticUpdatesToggled:(id)a3 forSpecifier:(id)a4
{
  v4 = [a3 BOOLValue];

  sub_10002DDC4(v4);
}

- (id)automaticUpdateStatus
{
  v2 = sub_10002DEE4();

  return [NSNumber numberWithBool:v2];
}

@end