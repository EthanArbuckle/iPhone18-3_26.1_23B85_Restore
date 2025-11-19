@interface NCNotificationsSettingsMailTopicsListController
- (id)_allUnreadSpecifierWithSectionInfo:(id)a3;
- (id)_footerTextForSpecialSections:(unint64_t)a3;
- (id)_primaryUnreadSpecifierWithSectionInfo:(id)a3;
- (id)_unreadBadgeGroupSpecifier;
- (id)specifierForSubsectionInfo:(id)a3;
- (id)specifiers;
- (id)specifiersForSubsectionInfos:(id)a3;
- (void)_enableAllUnreadBadgesForSpecifier:(id)a3;
- (void)_enablePrimaryUnreadBadgesForSpecifier:(id)a3;
- (void)_updateBadgeSettingsForSpecifier:(id)a3 enabled:(BOOL)a4;
- (void)mailTopicDetailControllerWillDisappear:(id)a3;
@end

@implementation NCNotificationsSettingsMailTopicsListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"BBSECTION_INFO_KEY"];
    v6 = [v5 subsections];
    v7 = [(NCNotificationsSettingsMailTopicsListController *)self specifiersForSubsectionInfos:v6];

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
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v7 = [v4 subsectionID];
  [v6 setIdentifier:v7];

  [v6 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v6 setProperty:self forKey:kNotificationsSettingsDetailControllerDelegate];

  return v6;
}

- (id)specifiersForSubsectionInfos:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v4 mutableCopy];
  v7 = [v4 bs_firstObjectPassingTest:&stru_4D970];
  if (v7)
  {
    [v6 removeObject:v7];
  }

  v8 = [v4 bs_firstObjectPassingTest:&stru_4D990];
  if (v8)
  {
    [v6 removeObject:v8];
  }

  v9 = [v4 bs_firstObjectPassingTest:&stru_4D9B0];
  if (v9)
  {
    [v6 removeObject:v9];
  }

  v10 = [v4 bs_firstObjectPassingTest:&stru_4D9D0];
  if (v10)
  {
    [v6 removeObject:v10];
  }

  v11 = [v4 bs_firstObjectPassingTest:&stru_4D9F0];
  if (v11)
  {
    [v6 removeObject:v11];
  }

  v41 = v11;
  v39 = v8;
  v12 = [v4 bs_firstObjectPassingTest:&stru_4DA10];
  v42 = v10;
  v43 = v6;
  v40 = v9;
  if (v12)
  {
    [v6 removeObject:v12];
    v13 = [(NCNotificationsSettingsMailTopicsListController *)self _unreadBadgeGroupSpecifier];
    [v5 addObject:v13];
    v14 = [PSSpecifier preferenceSpecifierNamed:&stru_4E3F0 target:self set:0 get:0 detail:0 cell:4 edit:0];
    [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v14 setIdentifier:@"MOBILE_MAIL_SETTINGS_PLACARD_ID"];
    [v5 addObject:v14];
    v15 = [(NCNotificationsSettingsMailTopicsListController *)self _primaryUnreadSpecifierWithSectionInfo:v12];
    [v5 addObject:v15];
    v16 = [v4 bs_firstObjectPassingTest:&stru_4DA30];
    v17 = [(NCNotificationsSettingsMailTopicsListController *)self _allUnreadSpecifierWithSectionInfo:v16];
    [v5 addObject:v17];
    [v43 removeObject:v16];
    if (([v16 pushSettings] & 8) != 0)
    {
      [v13 setProperty:v17 forKey:PSRadioGroupCheckedSpecifierKey];
      if (([v12 pushSettings] & 8) != 0)
      {
        [(NCNotificationsSettingsMailTopicsListController *)self _updateBadgeSettingsForSpecifier:v15 enabled:0];
      }
    }

    else
    {
      [v13 setProperty:v15 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v9 = v40;
    v10 = v42;
    v6 = v43;
  }

  if ([v6 count])
  {
    v38 = v7;
    v18 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v19 = [v18 localizedStringForKey:@"ACCOUNTS_GROUP_TITLE" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v20 = [PSSpecifier groupSpecifierWithID:@"ACCOUNTS_GROUP_ID" name:v19];

    [v5 addObject:v20];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v45;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [(NCNotificationsSettingsMailTopicsListController *)self specifierForSubsectionInfo:*(*(&v44 + 1) + 8 * i)];
          [v5 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v23);
    }

    v7 = v38;
    v9 = v40;
    v10 = v42;
    v6 = v43;
  }

  if (v7 || v39 || v9 || v10 || v41)
  {
    v27 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v27];
    if (v7)
    {
      v28 = [(NCNotificationsSettingsMailTopicsListController *)self specifierForSubsectionInfo:v7];
      [v5 addObject:v28];

      v29 = 1;
      if (!v39)
      {
LABEL_34:
        if (v9)
        {
          v31 = [(NCNotificationsSettingsMailTopicsListController *)self specifierForSubsectionInfo:v9];
          [v5 addObject:v31];
          v29 |= 4uLL;
        }

        if (v42)
        {
          v32 = [(NCNotificationsSettingsMailTopicsListController *)self specifierForSubsectionInfo:?];
          [v5 addObject:v32];
          v29 |= 8uLL;
        }

        if (v41)
        {
          [v41 setPushSettings:{objc_msgSend(v41, "pushSettings") & 0xFFFFFFFFFFFFFFF6}];
          v33 = [(NCNotificationsSettingsMailTopicsListController *)self specifierForSubsectionInfo:v41];
          [v5 addObject:v33];
          v29 |= 0x10uLL;
        }

        v34 = [(NCNotificationsSettingsMailTopicsListController *)self _footerTextForSpecialSections:v29];
        v35 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v36 = [v35 localizedStringForKey:v34 value:&stru_4E3F0 table:@"NotificationsSettings"];
        [v27 setProperty:v36 forKey:PSFooterTextGroupKey];

        v10 = v42;
        v6 = v43;
        goto LABEL_41;
      }
    }

    else
    {
      v29 = 0;
      if (!v39)
      {
        goto LABEL_34;
      }
    }

    v30 = [(NCNotificationsSettingsMailTopicsListController *)self specifierForSubsectionInfo:v39];
    [v5 addObject:v30];
    v29 |= 2uLL;

    goto LABEL_34;
  }

LABEL_41:

  return v5;
}

- (id)_unreadBadgeGroupSpecifier
{
  unreadBadgeGroupSpecifier = self->_unreadBadgeGroupSpecifier;
  if (!unreadBadgeGroupSpecifier)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:@"BADGE_COUNT" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [PSSpecifier groupSpecifierWithID:@"PRIMARY_GROUP_ID" name:v5];
    v7 = self->_unreadBadgeGroupSpecifier;
    self->_unreadBadgeGroupSpecifier = v6;

    [(PSSpecifier *)self->_unreadBadgeGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    unreadBadgeGroupSpecifier = self->_unreadBadgeGroupSpecifier;
  }

  return unreadBadgeGroupSpecifier;
}

- (id)_primaryUnreadSpecifierWithSectionInfo:(id)a3
{
  primaryUnreadSpecifier = self->_primaryUnreadSpecifier;
  if (a3 && !primaryUnreadSpecifier)
  {
    v5 = a3;
    v6 = PSDisplayNameForBBSection();
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v7 setButtonAction:"_enablePrimaryUnreadBadgesForSpecifier:"];
    v8 = [v5 subsectionID];
    [v7 setIdentifier:v8];

    [v7 setProperty:v5 forKey:@"BBSECTION_INFO_KEY"];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v9 = self->_primaryUnreadSpecifier;
    self->_primaryUnreadSpecifier = v7;

    primaryUnreadSpecifier = self->_primaryUnreadSpecifier;
  }

  return primaryUnreadSpecifier;
}

- (id)_allUnreadSpecifierWithSectionInfo:(id)a3
{
  allUnreadSpecifier = self->_allUnreadSpecifier;
  if (a3 && !allUnreadSpecifier)
  {
    v5 = a3;
    v6 = PSDisplayNameForBBSection();
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v7 setButtonAction:"_enableAllUnreadBadgesForSpecifier:"];
    v8 = [v5 subsectionID];
    [v7 setIdentifier:v8];

    [v7 setProperty:v5 forKey:@"BBSECTION_INFO_KEY"];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v9 = self->_allUnreadSpecifier;
    self->_allUnreadSpecifier = v7;

    allUnreadSpecifier = self->_allUnreadSpecifier;
  }

  return allUnreadSpecifier;
}

- (void)_enableAllUnreadBadgesForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationsSettingsMailTopicsListController *)self _unreadBadgeGroupSpecifier];
  [v5 setProperty:v4 forKey:PSRadioGroupCheckedSpecifierKey];

  [(NCNotificationsSettingsMailTopicsListController *)self _updateBadgeSettingsForSpecifier:v4 enabled:1];
  v7 = [(NCNotificationsSettingsMailTopicsListController *)self _primaryUnreadSpecifierWithSectionInfo:0];
  [(NCNotificationsSettingsMailTopicsListController *)self _updateBadgeSettingsForSpecifier:v7 enabled:0];
  v6 = [(NCNotificationsSettingsMailTopicsListController *)self _unreadBadgeGroupSpecifier];
  [(NCNotificationsSettingsMailTopicsListController *)self reloadSpecifier:v6];
}

- (void)_enablePrimaryUnreadBadgesForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationsSettingsMailTopicsListController *)self _unreadBadgeGroupSpecifier];
  [v5 setProperty:v4 forKey:PSRadioGroupCheckedSpecifierKey];

  [(NCNotificationsSettingsMailTopicsListController *)self _updateBadgeSettingsForSpecifier:v4 enabled:1];
  v7 = [(NCNotificationsSettingsMailTopicsListController *)self _allUnreadSpecifierWithSectionInfo:0];
  [(NCNotificationsSettingsMailTopicsListController *)self _updateBadgeSettingsForSpecifier:v7 enabled:0];
  v6 = [(NCNotificationsSettingsMailTopicsListController *)self _unreadBadgeGroupSpecifier];
  [(NCNotificationsSettingsMailTopicsListController *)self reloadSpecifier:v6];
}

- (void)_updateBadgeSettingsForSpecifier:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v9 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = [v9 pushSettings] & 0xFFFFFFFFFFFFFFF7;
  v6 = 8;
  if (!v4)
  {
    v6 = 0;
  }

  [v9 setPushSettings:v5 | v6];
  v7 = +[NCSettingsGatewayController sharedInstance];
  v8 = [v9 sectionID];
  [v7 setSectionInfo:v9 forSectionID:v8];
}

- (id)_footerTextForSpecialSections:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = v4;
  if ((v3 & 0x10) != 0)
  {
    [v4 addObject:@"PI"];
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"RM"];
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v5 addObject:@"VIP"];
  if ((v3 & 2) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v5 addObject:@"FM"];
  if ((v3 & 4) != 0)
  {
LABEL_6:
    [v5 addObject:@"VIT"];
  }

LABEL_7:
  v6 = [v5 componentsJoinedByString:@"_"];
  v7 = [NSString stringWithFormat:@"%@_GROUP_FOOTER_TEXT", v6];

  return v7;
}

- (void)mailTopicDetailControllerWillDisappear:(id)a3
{
  v4 = [a3 specifier];
  [(NCNotificationsSettingsMailTopicsListController *)self reloadSpecifier:v4];
}

@end