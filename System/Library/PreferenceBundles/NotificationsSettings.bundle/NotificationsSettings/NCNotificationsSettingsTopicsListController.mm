@interface NCNotificationsSettingsTopicsListController
- (id)allowNotifications:(id)notifications;
- (id)specifierForSubsectionInfo:(id)info;
- (id)specifiers;
- (id)specifiersForSubsectionInfos:(id)infos;
- (void)setAllowNotifications:(id)notifications specifier:(id)specifier;
@end

@implementation NCNotificationsSettingsTopicsListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"BBSECTION_INFO_KEY"];
    subsections = [v5 subsections];
    v7 = [(NCNotificationsSettingsTopicsListController *)self specifiersForSubsectionInfos:subsections];

    v8 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v7;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)specifierForSubsectionInfo:(id)info
{
  infoCopy = info;
  v5 = PSDisplayNameForBBSection();
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setAllowNotifications:specifier:" get:"allowNotifications:" detail:0 cell:6 edit:0];

  subsectionID = [infoCopy subsectionID];
  [v6 setIdentifier:subsectionID];

  [v6 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];

  return v6;
}

- (id)specifiersForSubsectionInfos:(id)infos
{
  infosCopy = infos;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = infosCopy;
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

- (id)allowNotifications:(id)notifications
{
  v3 = [notifications propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowsNotifications]);

  return v4;
}

- (void)setAllowNotifications:(id)notifications specifier:(id)specifier
{
  specifierCopy = specifier;
  notificationsCopy = notifications;
  v11 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  bOOLValue = [notificationsCopy BOOLValue];

  if (bOOLValue)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v11 setAuthorizationStatus:v8];
  [specifierCopy setProperty:v11 forKey:@"BBSECTION_INFO_KEY"];

  v9 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [v11 sectionID];
  [v9 setSectionInfo:v11 forSectionID:sectionID];
}

@end