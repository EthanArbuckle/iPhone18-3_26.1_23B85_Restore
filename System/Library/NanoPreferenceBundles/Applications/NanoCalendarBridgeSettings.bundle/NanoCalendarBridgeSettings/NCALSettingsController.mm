@interface NCALSettingsController
- (BOOL)showAlertsForSubsectionId:(id)a3;
- (BOOL)usingCustomCalendars;
- (BOOL)usingCustomOverlayCalendar;
- (id)_alertsEnabled:(id)a3;
- (id)_specifiersForOverlayCalendars;
- (id)applicationGroupSpecifiers;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)notificationApplicationSpecifiers;
- (void)mirrorSettingsChanged:(BOOL)a3;
- (void)setOverlayCalendarID:(id)a3;
- (void)setShowAlerts:(BOOL)a3 forSubsectionId:(id)a4;
- (void)setUsingCustomCalendars:(BOOL)a3;
- (void)setUsingCustomOverlayCalendar:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation NCALSettingsController

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];

  return v3;
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5
{
  v10.receiver = self;
  v10.super_class = NCALSettingsController;
  v5 = [(NCALSettingsController *)&v10 loadSpecifiersFromPlistName:a3 target:a4 bundle:a5];
  v6 = [v5 specifierForID:BPSMirrorGroupID];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NOTIFICATIONS_GROUP_HEADER" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
  [v6 setName:v8];

  return v5;
}

- (id)notificationApplicationSpecifiers
{
  v3 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v34 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v35 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATIONS_SUBSECTIONS_GROUP_ID"];
    v36 = v4;
    [v4 addObject:v35];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UPCOMING_EVENTS" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_alertsEnabled:" detail:objc_opt_class() cell:2 edit:0];

    v43[0] = @"SpecifierUserInfoSubsectionID";
    v43[1] = @"SpecifierUserInfoShowAlertString";
    v44[0] = @"com.apple.mobilecal.bulletin-subsection.upcomingEvents";
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SHOW_UPCOMING_EVENT_ALERTS" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v44[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v7 setUserInfo:v10];

    [v7 setIdentifier:@"Upcoming Events"];
    v11 = PSTitleKey;
    v33 = PSTitleKey;
    [v7 setProperty:@"UPCOMING_EVENTS" forKey:PSTitleKey];
    [v4 addObject:v7];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"INVITATIONS" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"_alertsEnabled:" detail:objc_opt_class() cell:2 edit:0];

    v41[0] = @"SpecifierUserInfoSubsectionID";
    v41[1] = @"SpecifierUserInfoShowAlertString";
    v42[0] = @"com.apple.mobilecal.bulletin-subsection.invitations";
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"SHOW_INVITATION_ALERTS" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v42[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v14 setUserInfo:v17];

    [v14 setProperty:@"INVITATIONS" forKey:v11];
    [v14 setIdentifier:@"Invitations"];
    [v36 addObject:v14];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"INVITEE_RESPONSES" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:"_alertsEnabled:" detail:objc_opt_class() cell:2 edit:0];

    v39[0] = @"SpecifierUserInfoSubsectionID";
    v39[1] = @"SpecifierUserInfoShowAlertString";
    v40[0] = @"com.apple.mobilecal.bulletin-subsection.Responses";
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SHOW_INVITEE_RESPONSE_ALERTS" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v40[1] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v20 setUserInfo:v23];

    [v20 setProperty:@"INVITEE_RESPONSES" forKey:v33];
    [v20 setIdentifier:@"Invitee Responses"];
    [v36 addObject:v20];
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"SHARED_CALENDAR_CHANGES" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:"_alertsEnabled:" detail:objc_opt_class() cell:2 edit:0];

    v37[0] = @"SpecifierUserInfoSubsectionID";
    v37[1] = @"SpecifierUserInfoShowAlertString";
    v38[0] = @"com.apple.mobilecal.bulletin-subsection.resourceChanges";
    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"SHOW_SHARED_CALENDAR_CHANGES" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v38[1] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v26 setUserInfo:v29];

    [v26 setProperty:@"SHARED_CALENDAR_CHANGES" forKey:v33];
    [v26 setIdentifier:@"Shared Calendar Alerts"];
    [v36 addObject:v26];
    v30 = [v36 copy];
    v31 = *&self->BPSNotificationAppController_opaque[v34];
    *&self->BPSNotificationAppController_opaque[v34] = v30;

    v3 = *&self->BPSNotificationAppController_opaque[v34];
  }

  return v3;
}

- (id)localizedMirroringDetailFooter
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(NCALSettingsController *)self bbSectionInfo];
  v5 = [v4 subsections];
  v6 = [v5 copy];

  v7 = [(NCALSettingsController *)self sectionInfo];
  v8 = [v7 objectForKeyedSubscript:BPSNanoBulletinSubsections];
  v9 = [v8 valueForKey:BPSNanoBulletinSubsectionId];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_5A34;
  v41[3] = &unk_10820;
  v32 = v9;
  v42 = v32;
  [v6 indexesOfObjectsPassingTest:v41];
  v31 = v33 = v6;
  v10 = [v6 objectsAtIndexes:?];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_NO_COLON" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
  v13 = [(NCALSettingsController *)self showAlerts];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = v14;
  if (v13)
  {
    v16 = @"SHOW_ALERTS";
  }

  else
  {
    v16 = @"DONT_SHOW_ALERTS";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
  v36 = v3;
  [v3 appendFormat:v12, v17];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v10;
  v18 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v35 = *v38;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        v22 = [NSBundle bundleForClass:objc_opt_class()];
        v23 = [v22 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
        v24 = [v21 displayName];
        LODWORD(v21) = [v21 showsInNotificationCenter];
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = v25;
        if (v21)
        {
          v27 = @"ON";
        }

        else
        {
          v27 = @"OFF";
        }

        v28 = [v25 localizedStringForKey:v27 value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
        [v36 appendFormat:v23, v24, v28];
      }

      v19 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v19);
  }

  v29 = [v36 copy];

  return v29;
}

- (void)mirrorSettingsChanged:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  v13 = [(NCALSettingsController *)self sectionInfo];
  v4 = [v13 objectForKeyedSubscript:BPSNanoBulletinSubsections];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = BPSNanoBulletinSubsectionId;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:v8];
        v11 = +[TLToneManager sharedToneManager];
        [v11 _setCurrentToneWatchAlertPolicy:v3 forAlertType:10 accountIdentifier:v10];

        v12 = +[TLVibrationManager sharedVibrationManager];
        [v12 _setCurrentVibrationWatchAlertPolicy:v3 forAlertType:10 accountIdentifier:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)applicationGroupSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 getActivePairedDevice];

  if (v5)
  {
    NRWatchOSVersionForRemoteDevice();
    if (NRVersionIsGreaterThanOrEqual())
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"CALENDARS_GROUP_HEADER" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
      v8 = [PSSpecifier groupSpecifierWithID:@"CALENDARS_MIRROR_RADIO_GROUP_ID" name:v7];

      [v8 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      [v3 addObject:v8];
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"CALENDARS_MIRROR_MY_COMPANION" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
      v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v11 setIdentifier:@"CALENDARS_MIRROR_MY_COMPANION_ID"];
      [v3 addObject:v11];
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"CALENDARS_CUSTOM" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v14 setIdentifier:@"CALENDARS_CUSTOM_ID"];
      [v3 addObject:v14];
      v15 = [(NCALSettingsController *)self usingCustomCalendars];
      if (v15)
      {
        v16 = &off_111F8;
      }

      else
      {
        v16 = &__kCFBooleanTrue;
      }

      v17 = &PSAccessoryKey;
      if (!v15)
      {
        v17 = &PSHidesDisclosureIndicatorKey;
      }

      [v14 setProperty:v16 forKey:*v17];
      if ([(NCALSettingsController *)self usingCustomCalendars])
      {
        v18 = v14;
      }

      else
      {
        v18 = v11;
      }

      [v8 setProperty:v18 forKey:PSRadioGroupCheckedSpecifierKey];
    }
  }

  v19 = [(NCALSettingsController *)self _specifiersForOverlayCalendars];
  [v3 addObjectsFromArray:v19];

  return v3;
}

- (id)_specifiersForOverlayCalendars
{
  v3 = objc_opt_new();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"OVERLAY_CALENDARS" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
  v6 = [PSSpecifier groupSpecifierWithID:@"OVERLAY_CALENDAR_GROUP_ID" name:v5];

  v39 = PSIsRadioGroupKey;
  [v6 setProperty:&__kCFBooleanTrue forKey:?];
  [v3 addObject:v6];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CALENDARS_MIRROR_MY_COMPANION" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v9 setIdentifier:@"OVERLAY_CALENDAR_MIRROR_MY_COMPANION_ID"];
  [v3 addObject:v9];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CALENDARS_CUSTOM" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v12 setIdentifier:@"OVERLAY_CALENDAR_CUSTOM_ID"];
  v41 = v3;
  [v3 addObject:v12];
  v13 = PSRadioGroupCheckedSpecifierKey;
  [v6 setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
  if ([(NCALSettingsController *)self usingCustomOverlayCalendar])
  {
    v33 = v9;
    v34 = v6;
    v32 = v12;
    v35 = v13;
    [v6 setProperty:v12 forKey:v13];
    v14 = [PSSpecifier groupSpecifierWithID:@"OVERLAY_CALENDAR_CUSTOM_GROUP_ID" name:&stru_10A88];
    [v14 setProperty:&__kCFBooleanTrue forKey:v39];
    [v41 addObject:v14];
    v15 = +[NanoCalendarPreferences overlayCalendarLocaleIDs];
    v16 = +[NanoCalendarPreferences overlayCalendarLocaleDisplayNames];
    [v15 insertObject:&stru_10A88 atIndex:0];
    v37 = self;
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"OFF" value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];
    v40 = v16;
    [v16 setObject:v18 forKeyedSubscript:&stru_10A88];

    v19 = &NRVersionIsGreaterThanOrEqual_ptr;
    v20 = +[NanoCalendarPreferences sharedPreferences];
    v38 = [v20 overlayCalendarID];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v15;
    v21 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v43;
      v24 = PSValueKey;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v42 + 1) + 8 * i);
          v27 = [v40 objectForKeyedSubscript:v26];
          v28 = [v19[79] preferenceSpecifierNamed:v27 target:v37 set:0 get:0 detail:0 cell:3 edit:0];
          v29 = [v14 identifier];
          v30 = [NSString stringWithFormat:@"%@.%@", v29, v26];

          [v28 setIdentifier:v30];
          [v28 setObject:v26 forKeyedSubscript:v24];
          [v41 addObject:v28];
          if ([v26 isEqualToString:v38])
          {
            [v14 setObject:v28 forKeyedSubscript:v35];
          }

          v19 = &NRVersionIsGreaterThanOrEqual_ptr;
        }

        v22 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v22);
    }

    v9 = v33;
    v6 = v34;
    v12 = v32;
  }

  return v41;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCALSettingsController *)self indexForIndexPath:v7];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:@"CALENDARS_MIRROR_MY_COMPANION_ID"];

  if ((v11 & 1) != 0 || ([v9 identifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"CALENDARS_CUSTOM_ID"), v12, v13))
  {
    [(NCALSettingsController *)self setUsingCustomCalendars:v11 ^ 1];
  }

  v14 = [v9 identifier];
  v15 = [v14 isEqualToString:@"OVERLAY_CALENDAR_MIRROR_MY_COMPANION_ID"];

  if (v15)
  {
    v16 = self;
    v17 = 0;
LABEL_8:
    [(NCALSettingsController *)v16 setUsingCustomOverlayCalendar:v17];
    goto LABEL_9;
  }

  v18 = [v9 identifier];
  v19 = [v18 isEqualToString:@"OVERLAY_CALENDAR_CUSTOM_ID"];

  if (v19)
  {
    v16 = self;
    v17 = 1;
    goto LABEL_8;
  }

  v20 = [v9 identifier];
  v21 = [v20 containsString:@"OVERLAY_CALENDAR_CUSTOM_GROUP_ID"];

  if (v21)
  {
    v22 = [v9 objectForKeyedSubscript:PSValueKey];
    [(NCALSettingsController *)self setOverlayCalendarID:v22];
  }

LABEL_9:
  v23.receiver = self;
  v23.super_class = NCALSettingsController;
  [(NCALSettingsController *)&v23 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (BOOL)usingCustomCalendars
{
  v2 = +[NanoCalendarPreferences sharedPreferences];
  v3 = [v2 customDeselectedCalendarHashes];
  v4 = v3 != 0;

  return v4;
}

- (void)setUsingCustomCalendars:(BOOL)a3
{
  v3 = a3;
  if ([(NCALSettingsController *)self usingCustomCalendars]!= a3)
  {
    v5 = ncs_log_selected_calendars();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NCALSettingsController: Set Using Custom Calendars: %d", v11, 8u);
    }

    v6 = +[NanoCalendarPreferences sharedPreferences];
    if (v3)
    {
      v7 = +[EKPreferences shared];
      v8 = [v7 deselectedCalendarSyncHashes];

      if (v8)
      {
        v9 = +[EKPreferences shared];
        v10 = [v9 deselectedCalendarSyncIdentifiers];
      }

      else
      {
        v8 = &__NSArray0__struct;
        v10 = &__NSArray0__struct;
      }
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    [v6 setCustomDeselectedCalendarHashes:v8];
    [v6 setCustomDeselectedCalendarIdentifiers:v10];
    [(NCALSettingsController *)self reloadSpecifiers];
  }
}

- (id)_alertsEnabled:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"SpecifierUserInfoSubsectionID"];

  LODWORD(v4) = [(NCALSettingsController *)self showAlertsForSubsectionId:v5];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v4)
  {
    v8 = @"ON";
  }

  else
  {
    v8 = @"OFF";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_10A88 table:@"NanoCalendarBridgeSettings"];

  return v9;
}

- (void)setShowAlerts:(BOOL)a3 forSubsectionId:(id)a4
{
  v16 = a3;
  v5 = a4;
  v17 = [(NCALSettingsController *)self sectionInfo];
  [v17 objectForKeyedSubscript:BPSNanoBulletinSubsections];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = BPSNanoBulletinSubsectionId;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v10];
        v14 = [v13 isEqualToString:v5];

        if (v14)
        {
          v15 = [NSNumber numberWithBool:v16];
          [v12 setObject:v15 forKeyedSubscript:BPSNanoBulletinShowsAlerts];

          [(NCALSettingsController *)self writeSectionState];
          [(NCALSettingsController *)self reloadSpecifiers];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)showAlertsForSubsectionId:(id)a3
{
  v4 = a3;
  v5 = [(NCALSettingsController *)self sectionInfo];
  [v5 objectForKeyedSubscript:BPSNanoBulletinSubsections];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = BPSNanoBulletinSubsectionId;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:{v10, v18}];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v16 = [v12 objectForKeyedSubscript:BPSNanoBulletinShowsAlerts];
          v15 = [v16 BOOLValue];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)usingCustomOverlayCalendar
{
  v2 = +[NanoCalendarPreferences sharedPreferences];
  v3 = [v2 customOverlayCalendarID];
  v4 = v3 != 0;

  return v4;
}

- (void)setUsingCustomOverlayCalendar:(BOOL)a3
{
  v3 = a3;
  if ([(NCALSettingsController *)self usingCustomOverlayCalendar]!= a3)
  {
    if (v3)
    {
      v5 = &stru_10A88;
    }

    else
    {
      v5 = 0;
    }

    [(NCALSettingsController *)self setOverlayCalendarID:v5];
  }

  [(NCALSettingsController *)self reloadSpecifiers];
}

- (void)setOverlayCalendarID:(id)a3
{
  v3 = a3;
  v4 = +[NanoCalendarPreferences sharedPreferences];
  [v4 setOverlayCalendarID:v3 deviceHasCompanion:1];
}

@end