@interface NCNotificationsSettingsMailTopicCellTableViewCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation NCNotificationsSettingsMailTopicCellTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v32.receiver = self;
  v32.super_class = NCNotificationsSettingsMailTopicCellTableViewCell;
  v4 = a3;
  [(NCNotificationsSettingsMailTopicCellTableViewCell *)&v32 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"BBSECTION_INFO_KEY", v32.receiver, v32.super_class}];

  if ([v5 allowsNotifications] && (objc_msgSend(v5, "sectionID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = +[TLAlert bb_toneLibraryAlertTypeForSectionID:](TLAlert, "bb_toneLibraryAlertTypeForSectionID:", v6), v6, v7))
  {
    v8 = +[TLToneManager sharedToneManager];
    v9 = [v5 subsectionID];
    v10 = [v8 currentToneIdentifierForAlertType:v7 topic:v9];

    if (v10)
    {
      v11 = [v10 isEqualToString:TLToneIdentifierNone] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    if (MGGetBoolAnswer())
    {
      v13 = +[TLVibrationManager sharedVibrationManager];
      v14 = [v5 subsectionID];
      v15 = [v13 currentVibrationIdentifierForAlertType:v7 topic:v14];

      if (v15)
      {
        v12 = [v15 isEqualToString:TLVibrationIdentifierNone] ^ 1;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  if (([v5 suppressedSettings] & 0x2000) == 0 && (objc_msgSend(v5, "pushSettings") & 8) != 0)
  {
    v17 = [v5 parentSection];
    v16 = ([v17 pushSettings] >> 3) & 1;
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v18 = +[NSMutableArray array];
  if ([v5 allowsNotifications])
  {
    v19 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v20 = [v19 localizedStringForKey:@"ALERTS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v18 addObject:v20];
  }

  if ((v11 | v12))
  {
    if (v11)
    {
      v21 = @"SOUNDS";
    }

    else
    {
      v21 = @"VIBRATIONS";
    }

    v22 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v23 = [v22 localizedStringForKey:v21 value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v18 addObject:v23];
  }

  if (v16)
  {
    v24 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v25 = [v24 localizedStringForKey:@"BADGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v18 addObject:v25];
  }

  if (![v18 count])
  {
    v26 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v27 = [v26 localizedStringForKey:@"OFF" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v18 addObject:v27];
  }

  v28 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v29 = [v28 localizedStringForKey:@"SEPERATOR" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v30 = [v18 componentsJoinedByString:v29];

  v31 = [(NCNotificationsSettingsMailTopicCellTableViewCell *)self detailTextLabel];
  [v31 setText:v30];
}

@end