@interface NCNotificationsSettingsTopicsListController
- (id)allowNotifications:(id)a3;
- (id)specifierForSubsectionInfo:(id)a3;
- (id)specifiers;
- (id)specifiersForSubsectionInfos:(id)a3;
- (void)setAllowNotifications:(id)a3 specifier:(id)a4;
@end

@implementation NCNotificationsSettingsTopicsListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"BBSECTION_INFO_KEY"];
    v6 = [v5 subsections];
    v7 = [(NCNotificationsSettingsTopicsListController *)self specifiersForSubsectionInfos:v6];

    v8 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v7;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)specifierForSubsectionInfo:(id)a3
{
  v4 = a3;
  v5 = PSDisplayNameForBBSection();
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setAllowNotifications:specifier:" get:"allowNotifications:" detail:0 cell:6 edit:0];

  v7 = [v4 subsectionID];
  [v6 setIdentifier:v7];

  [v6 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];

  return v6;
}

- (id)specifiersForSubsectionInfos:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NCNotificationsSettingsTopicsListController *)self specifierForSubsectionInfo:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)allowNotifications:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowsNotifications]);

  return v4;
}

- (void)setAllowNotifications:(id)a3 specifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v11 = [v5 propertyForKey:@"BBSECTION_INFO_KEY"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v11 setAuthorizationStatus:v8];
  [v5 setProperty:v11 forKey:@"BBSECTION_INFO_KEY"];

  v9 = +[NCSettingsGatewayController sharedInstance];
  v10 = [v11 sectionID];
  [v9 setSectionInfo:v11 forSectionID:v10];
}

@end