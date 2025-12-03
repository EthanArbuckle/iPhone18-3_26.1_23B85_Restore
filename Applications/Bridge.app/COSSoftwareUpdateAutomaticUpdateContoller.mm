@interface COSSoftwareUpdateAutomaticUpdateContoller
- (id)automaticUpdateStatus;
- (id)specifiers;
- (void)armedAutoUpdateForAutomaticUpdatesToggled:(id)toggled forSpecifier:(id)specifier;
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
    automaticUpdateGroup = [(COSSoftwareUpdateAutomaticUpdateContoller *)self automaticUpdateGroup];
    v9 = [v7 initWithObjects:{automaticUpdateGroup, 0}];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_10026E598 table:@"Software Update"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"armedAutoUpdateForAutomaticUpdatesToggled:forSpecifier:" get:"automaticUpdateStatus" detail:0 cell:6 edit:0];
    [(COSSoftwareUpdateAutomaticUpdateContoller *)self setAutomaticUpdateSwitchSpecifier:v12];

    v13 = +[NSBundle mainBundle];
    v14 = SFLocalizableWAPIStringKeyForKey();
    v15 = [v13 localizedStringForKey:v14 value:&stru_10026E598 table:@"Software Update"];

    automaticUpdateGroup2 = [(COSSoftwareUpdateAutomaticUpdateContoller *)self automaticUpdateGroup];
    [automaticUpdateGroup2 setProperty:v15 forKey:PSFooterTextGroupKey];

    automaticUpdateSwitchSpecifier = [(COSSoftwareUpdateAutomaticUpdateContoller *)self automaticUpdateSwitchSpecifier];
    [v9 addObject:automaticUpdateSwitchSpecifier];

    v18 = *&self->BPSListController_opaque[v2];
    *&self->BPSListController_opaque[v2] = v9;
    v19 = v9;

    v4 = *&self->BPSListController_opaque[v2];
  }

  return v4;
}

- (void)armedAutoUpdateForAutomaticUpdatesToggled:(id)toggled forSpecifier:(id)specifier
{
  bOOLValue = [toggled BOOLValue];

  sub_10002DDC4(bOOLValue);
}

- (id)automaticUpdateStatus
{
  v2 = sub_10002DEE4();

  return [NSNumber numberWithBool:v2];
}

@end