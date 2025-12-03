@interface NotificationCell
- (BOOL)isAnnounceEnabledForSectionInfo:(id)info;
- (id)getLazyIcon;
- (void)dealloc;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setAppIcon:(id)icon;
- (void)setAppName:(id)name;
- (void)setNotificationTypes:(id)types;
@end

@implementation NotificationCell

- (id)getLazyIcon
{
  specifier = [(NotificationCell *)self specifier];
  v4 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  nc_settingsIconImage = [v4 nc_settingsIconImage];
  if (!nc_settingsIconImage)
  {
    v7.receiver = self;
    v7.super_class = NotificationCell;
    nc_settingsIconImage = [(NotificationCell *)&v7 getLazyIcon];
  }

  return nc_settingsIconImage;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v110 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  v3 = [specifierCopy propertyForKey:PSIconUTTypeIdentifierKey];

  if (!v3)
  {
    icon = [v110 icon];
    v5 = [icon _bestVariantForFormat:1];

    applicationIdentifier = [v5 applicationIdentifier];
    if (![applicationIdentifier length])
    {
      sectionID = [v110 sectionID];
      v8 = [sectionID copy];

      applicationIdentifier = v8;
    }

    [specifierCopy setProperty:applicationIdentifier forKey:PSLazyIconAppID];
    v9 = [specifierCopy propertyForKey:kWantsIcon];
    [specifierCopy setProperty:v9 forKey:PSLazyIconLoading];
  }

  v142.receiver = self;
  v142.super_class = NotificationCell;
  [(NotificationCell *)&v142 refreshCellContentsWithSpecifier:specifierCopy];
  v105 = +[NSMutableArray array];
  allowsNotifications = [v110 allowsNotifications];
  lockScreenSetting = [v110 lockScreenSetting];
  v122 = lockScreenSetting == &dword_0 + 2;
  notificationCenterSetting = [v110 notificationCenterSetting];
  v121 = notificationCenterSetting == &dword_0 + 2;
  carPlaySetting = [v110 carPlaySetting];
  v124 = carPlaySetting == &dword_0 + 2;
  remoteNotificationsSetting = [v110 remoteNotificationsSetting];
  v125 = remoteNotificationsSetting == &dword_0 + 2;
  v128 = [(NotificationCell *)self isAnnounceEnabledForSectionInfo:v110];
  criticalAlertSetting = [v110 criticalAlertSetting];
  v126 = criticalAlertSetting == &dword_0 + 2;
  isDeliveredQuietly = [v110 isDeliveredQuietly];
  if (allowsNotifications)
  {
    suppressedSettings = [v110 suppressedSettings];
    pushSettings = [v110 pushSettings];
    alertType = [v110 alertType];
    sectionID2 = [v110 sectionID];
    v18 = [TLAlert bb_toneLibraryAlertTypeForSectionID:sectionID2];

    if (v18)
    {
      v19 = +[TLToneManager sharedToneManager];
      subsectionID = [v110 subsectionID];
      v127 = [v19 currentToneIdentifierForAlertType:v18 topic:subsectionID];

      pushSettings &= 0xFFFFFFED;
      if (v127)
      {
        v21 = [v127 isEqualToString:TLToneIdentifierNone];
        v22 = 18;
        if (v21)
        {
          v22 = 0;
        }

        pushSettings |= v22;
      }

      if (MGGetBoolAnswer())
      {
        v23 = +[TLVibrationManager sharedVibrationManager];
        subsectionID2 = [v110 subsectionID];
        v25 = [v23 currentVibrationIdentifierForAlertType:v18 topic:subsectionID2];

        if (v25)
        {
          v26 = [v25 isEqualToString:TLVibrationIdentifierNone] ^ 1;
        }

        else
        {
          LOBYTE(v26) = 0;
        }
      }

      else
      {
        LOBYTE(v26) = 0;
      }
    }

    else
    {
      LOBYTE(v26) = 0;
    }

    v29 = pushSettings & 0xFFFFFFF6;
    if ((suppressedSettings & 0x2000) == 0)
    {
      v29 = pushSettings;
    }

    if ((suppressedSettings & 0x4000) != 0)
    {
      v29 &= 0xFFFFFFED;
    }

    v30 = alertType;
    if ((suppressedSettings & 0x20) != 0)
    {
      v30 = 0;
    }

    v118 = v30;
    if ((suppressedSettings & 0x20) != 0)
    {
      v29 &= 0xFFFFFFDB;
    }

    v123 = v29;
    v32 = (suppressedSettings & 2) == 0 && lockScreenSetting == &dword_0 + 2;
    v34 = (suppressedSettings & 1) == 0 && notificationCenterSetting == &dword_0 + 2;
    v121 = v34;
    v122 = v32;
    v36 = (suppressedSettings & 0x80) == 0 && carPlaySetting == &dword_0 + 2;
    v38 = (*&suppressedSettings & 0x10000) == 0 && remoteNotificationsSetting == &dword_0 + 2;
    v124 = v36;
    v125 = v38;
    v140 = 0u;
    v141 = 0u;
    v40 = (suppressedSettings & 0x100) == 0 && criticalAlertSetting == &dword_0 + 2;
    v126 = v40;
    v138 = 0uLL;
    v139 = 0uLL;
    obj = [v110 subsections];
    v130 = [obj countByEnumeratingWithState:&v138 objects:v143 count:16];
    v120 = ((suppressedSettings & 0x4000) == 0) & v26;
    v128 = ((suppressedSettings & 0x400) == 0) & v128;
    if (v130)
    {
      v117 = *v139;
      v107 = TLToneIdentifierNone;
      v106 = TLVibrationIdentifierNone;
      do
      {
        for (i = 0; i != v130; i = i + 1)
        {
          if (*v139 != v117)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v138 + 1) + 8 * i);
          if ([v42 allowsNotifications])
          {
            suppressedSettings2 = [v42 suppressedSettings];
            pushSettings2 = [v42 pushSettings];
            alertType2 = [v42 alertType];
            lockScreenSetting2 = [v42 lockScreenSetting];
            notificationCenterSetting2 = [v42 notificationCenterSetting];
            carPlaySetting2 = [v42 carPlaySetting];
            remoteNotificationsSetting2 = [v42 remoteNotificationsSetting];
            v45 = [(NotificationCell *)self isAnnounceEnabledForSectionInfo:v42];
            criticalAlertSetting2 = [v42 criticalAlertSetting];
            isDeliveredQuietly2 = [v42 isDeliveredQuietly];
            sectionID3 = [v110 sectionID];
            v48 = [TLAlert bb_toneLibraryAlertTypeForSectionID:sectionID3];

            if (v48)
            {
              v49 = +[TLToneManager sharedToneManager];
              subsectionID3 = [v42 subsectionID];
              v51 = [v49 currentToneIdentifierForAlertType:v48 topic:subsectionID3];

              pushSettings2 &= 0xFFFFFFED;
              if (v51)
              {
                v52 = [v51 isEqualToString:v107];
                v53 = 18;
                if (v52)
                {
                  v53 = 0;
                }

                pushSettings2 |= v53;
              }

              if (MGGetBoolAnswer())
              {
                v54 = +[TLVibrationManager sharedVibrationManager];
                subsectionID4 = [v42 subsectionID];
                v56 = [v54 currentVibrationIdentifierForAlertType:v48 topic:subsectionID4];

                if (v56)
                {
                  v57 = [v56 isEqualToString:v106] ^ 1;
                }

                else
                {
                  LOBYTE(v57) = 0;
                }
              }

              else
              {
                LOBYTE(v57) = 0;
              }
            }

            else
            {
              LOBYTE(v57) = 0;
            }

            v58 = pushSettings2 & 0xFFFFFFF6;
            if ((suppressedSettings2 & 0x2000) == 0)
            {
              v58 = pushSettings2;
            }

            if ((suppressedSettings2 & 0x4000) != 0)
            {
              v58 &= 0xFFFFFFED;
            }

            if ((suppressedSettings2 & 0x20) != 0)
            {
              v58 &= 0xFFFFFFDB;
            }

            v59 = alertType2;
            if ((suppressedSettings2 & 0x20) != 0)
            {
              v59 = 0;
            }

            v61 = (suppressedSettings2 & 2) == 0 && lockScreenSetting2 == &dword_0 + 2;
            v63 = (suppressedSettings2 & 1) == 0 && notificationCenterSetting2 == &dword_0 + 2;
            v65 = (suppressedSettings2 & 0x80) == 0 && carPlaySetting2 == &dword_0 + 2;
            v67 = (*&suppressedSettings2 & 0x10000) == 0 && remoteNotificationsSetting2 == &dword_0 + 2;
            v69 = (suppressedSettings2 & 0x100) == 0 && criticalAlertSetting2 == &dword_0 + 2;
            v123 |= v58;
            v122 |= v61;
            v121 |= v63;
            v124 |= v65;
            v125 |= v67;
            v128 |= ((suppressedSettings2 & 0x400) == 0) & v45;
            v126 |= v69;
            v120 |= ((suppressedSettings2 & 0x6000) == 0) & v57;
            isDeliveredQuietly |= isDeliveredQuietly2;
            v70 = v118;
            if (v118 <= v59)
            {
              v70 = v59;
            }

            v118 = v70;
          }
        }

        v130 = [obj countByEnumeratingWithState:&v138 objects:v143 count:16];
      }

      while (v130);
    }

    v27 = v118 != 0;
    v28 = v128 ^ 1;
  }

  else
  {
    v27 = 0;
    v123 = 0;
    v120 = 0;
    v28 = 1;
  }

  v71 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalScheduledDeliverySetting = [v71 effectiveGlobalScheduledDeliverySetting];

  if (effectiveGlobalScheduledDeliverySetting == &dword_0 + 2)
  {
    v73 = allowsNotifications;
  }

  else
  {
    v73 = 0;
  }

  if (v73 == 1)
  {
    v74 = [v110 scheduledDeliverySetting] == &dword_0 + 2;
    v75 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v76 = v75;
    if (v74)
    {
      v77 = @"SCHEDULED";
    }

    else
    {
      v77 = @"IMMEDIATE";
    }

    v78 = [v75 localizedStringForKey:v77 value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v105 addObject:v78];
  }

  if (v126)
  {
    v79 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v80 = [v79 localizedStringForKey:@"CRITICAL_ALERTS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v105 addObject:v80];
  }

  if (effectiveGlobalScheduledDeliverySetting != &dword_0 + 2)
  {
    v81 = v123;
    if ((v123 & 4) != 0 && v27)
    {
      v82 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v83 = [v82 localizedStringForKey:@"BANNER_ALERTS" value:&stru_4E3F0 table:@"NotificationsSettings"];
      [v105 addObject:v83];

      v81 = v123;
    }

    if ((v120 | (v81 >> 4)))
    {
      if ((v81 & 0x10) != 0)
      {
        v84 = @"SOUNDS";
      }

      else
      {
        v84 = @"VIBRATIONS";
      }

      v85 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v86 = [v85 localizedStringForKey:v84 value:&stru_4E3F0 table:@"NotificationsSettings"];
      [v105 addObject:v86];

      LOBYTE(v81) = v123;
    }

    if ((v81 & 8) != 0)
    {
      v87 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v88 = [v87 localizedStringForKey:@"BADGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
      [v105 addObject:v88];
    }
  }

  if (v124)
  {
    v89 = objc_alloc_init(CRPairedVehicleManager);
    v132 = 0;
    v133 = &v132;
    v134 = 0x3032000000;
    v135 = sub_156CC;
    v136 = sub_156DC;
    v137 = 0;
    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_156E4;
    v131[3] = &unk_4D638;
    v131[4] = &v132;
    [v89 syncFetchAllVehiclesWithCompletion:v131];
    v90 = [v133[5] count] != 0;
    _Block_object_dispose(&v132, 8);
  }

  else
  {
    v90 = 0;
  }

  if (v125)
  {
    v91 = +[NCRemoteNotificationsManager featureIsAvailable];
  }

  else
  {
    v91 = 0;
  }

  sectionID4 = [v110 sectionID];
  if ([sectionID4 isEqualToString:@"com.apple.mobilemail"])
  {
    subsections = [v110 subsections];
    v94 = [subsections count] == 0;
  }

  else
  {
    v94 = 0;
  }

  if ((v28 & 1) == 0)
  {
    v95 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v96 = [v95 localizedStringForKey:@"ANNOUNCE" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v105 addObject:v96];
  }

  if (![v105 count])
  {
    if (isDeliveredQuietly)
    {
      v97 = @"DELIVER_QUIETLY";
LABEL_159:
      v98 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v99 = [v98 localizedStringForKey:v97 value:&stru_4E3F0 table:@"NotificationsSettings"];
      [v105 addObject:v99];

      goto LABEL_160;
    }

    if ((!allowsNotifications || ((v121 | v122 | v90 | v91 | v128 | v126 | v94) & 1) == 0) && v110)
    {
      v97 = @"OFF";
      goto LABEL_159;
    }
  }

LABEL_160:
  v100 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v101 = [v100 localizedStringForKey:@"SEPERATOR" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v102 = [v105 componentsJoinedByString:v101];
  [(NotificationCell *)self setNotificationTypes:v102];
}

- (void)dealloc
{
  [(UIImageView *)self->_appIcon removeFromSuperview];
  v3.receiver = self;
  v3.super_class = NotificationCell;
  [(NotificationCell *)&v3 dealloc];
}

- (void)setAppIcon:(id)icon
{
  iconCopy = icon;
  appIcon = self->_appIcon;
  if (appIcon != iconCopy)
  {
    v8 = iconCopy;
    [(UIImageView *)appIcon removeFromSuperview];
    objc_storeStrong(&self->_appIcon, icon);
    contentView = [(NotificationCell *)self contentView];
    [contentView addSubview:self->_appIcon];

    appIcon = [(NotificationCell *)self setNeedsLayout];
    iconCopy = v8;
  }

  _objc_release_x1(appIcon, iconCopy);
}

- (void)setAppName:(id)name
{
  nameCopy = name;
  textLabel = [(NotificationCell *)self textLabel];
  [textLabel setText:nameCopy];
}

- (void)setNotificationTypes:(id)types
{
  typesCopy = types;
  detailTextLabel = [(NotificationCell *)self detailTextLabel];
  [detailTextLabel setText:typesCopy];
}

- (BOOL)isAnnounceEnabledForSectionInfo:(id)info
{
  infoCopy = info;
  v4 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalAnnounceSetting = [v4 effectiveGlobalAnnounceSetting];

  announceSetting = [infoCopy announceSetting];
  if (effectiveGlobalAnnounceSetting == &dword_0 + 2 && announceSetting >= 2)
  {
    v9 = announceSetting;
    v10 = +[NCSettingsGatewayController sharedInstance];
    v8 = [v10 effectiveGlobalScheduledDeliverySetting] != &dword_0 + 2 || objc_msgSend(infoCopy, "scheduledDeliverySetting") != &dword_0 + 2 || objc_msgSend(infoCopy, "timeSensitiveSetting") == &dword_0 + 2 || objc_msgSend(infoCopy, "directMessagesSetting") == &dword_0 + 2;

    if (v8 && v9 == &dword_0 + 2)
    {
      timeSensitiveSetting = [infoCopy timeSensitiveSetting];
      v12 = [infoCopy scheduledDeliverySetting] != &dword_0 + 2 && objc_msgSend(infoCopy, "directMessagesSetting") || objc_msgSend(infoCopy, "scheduledDeliverySetting") == &dword_0 + 2 && objc_msgSend(infoCopy, "directMessagesSetting") == &dword_0 + 2;
      LOBYTE(v8) = timeSensitiveSetting == &dword_0 + 2 || v12;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end