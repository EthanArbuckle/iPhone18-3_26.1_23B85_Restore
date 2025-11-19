@interface NotificationCell
- (BOOL)isAnnounceEnabledForSectionInfo:(id)a3;
- (id)getLazyIcon;
- (void)dealloc;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setAppIcon:(id)a3;
- (void)setAppName:(id)a3;
- (void)setNotificationTypes:(id)a3;
@end

@implementation NotificationCell

- (id)getLazyIcon
{
  v3 = [(NotificationCell *)self specifier];
  v4 = [v3 propertyForKey:@"BBSECTION_INFO_KEY"];

  v5 = [v4 nc_settingsIconImage];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = NotificationCell;
    v5 = [(NotificationCell *)&v7 getLazyIcon];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v104 = a3;
  v110 = [v104 propertyForKey:@"BBSECTION_INFO_KEY"];
  v3 = [v104 propertyForKey:PSIconUTTypeIdentifierKey];

  if (!v3)
  {
    v4 = [v110 icon];
    v5 = [v4 _bestVariantForFormat:1];

    v6 = [v5 applicationIdentifier];
    if (![v6 length])
    {
      v7 = [v110 sectionID];
      v8 = [v7 copy];

      v6 = v8;
    }

    [v104 setProperty:v6 forKey:PSLazyIconAppID];
    v9 = [v104 propertyForKey:kWantsIcon];
    [v104 setProperty:v9 forKey:PSLazyIconLoading];
  }

  v142.receiver = self;
  v142.super_class = NotificationCell;
  [(NotificationCell *)&v142 refreshCellContentsWithSpecifier:v104];
  v105 = +[NSMutableArray array];
  v103 = [v110 allowsNotifications];
  v10 = [v110 lockScreenSetting];
  v122 = v10 == &dword_0 + 2;
  v11 = [v110 notificationCenterSetting];
  v121 = v11 == &dword_0 + 2;
  v12 = [v110 carPlaySetting];
  v124 = v12 == &dword_0 + 2;
  v13 = [v110 remoteNotificationsSetting];
  v125 = v13 == &dword_0 + 2;
  v128 = [(NotificationCell *)self isAnnounceEnabledForSectionInfo:v110];
  v14 = [v110 criticalAlertSetting];
  v126 = v14 == &dword_0 + 2;
  v119 = [v110 isDeliveredQuietly];
  if (v103)
  {
    v15 = [v110 suppressedSettings];
    v16 = [v110 pushSettings];
    v129 = [v110 alertType];
    v17 = [v110 sectionID];
    v18 = [TLAlert bb_toneLibraryAlertTypeForSectionID:v17];

    if (v18)
    {
      v19 = +[TLToneManager sharedToneManager];
      v20 = [v110 subsectionID];
      v127 = [v19 currentToneIdentifierForAlertType:v18 topic:v20];

      v16 &= 0xFFFFFFED;
      if (v127)
      {
        v21 = [v127 isEqualToString:TLToneIdentifierNone];
        v22 = 18;
        if (v21)
        {
          v22 = 0;
        }

        v16 |= v22;
      }

      if (MGGetBoolAnswer())
      {
        v23 = +[TLVibrationManager sharedVibrationManager];
        v24 = [v110 subsectionID];
        v25 = [v23 currentVibrationIdentifierForAlertType:v18 topic:v24];

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

    v29 = v16 & 0xFFFFFFF6;
    if ((v15 & 0x2000) == 0)
    {
      v29 = v16;
    }

    if ((v15 & 0x4000) != 0)
    {
      v29 &= 0xFFFFFFED;
    }

    v30 = v129;
    if ((v15 & 0x20) != 0)
    {
      v30 = 0;
    }

    v118 = v30;
    if ((v15 & 0x20) != 0)
    {
      v29 &= 0xFFFFFFDB;
    }

    v123 = v29;
    v32 = (v15 & 2) == 0 && v10 == &dword_0 + 2;
    v34 = (v15 & 1) == 0 && v11 == &dword_0 + 2;
    v121 = v34;
    v122 = v32;
    v36 = (v15 & 0x80) == 0 && v12 == &dword_0 + 2;
    v38 = (*&v15 & 0x10000) == 0 && v13 == &dword_0 + 2;
    v124 = v36;
    v125 = v38;
    v140 = 0u;
    v141 = 0u;
    v40 = (v15 & 0x100) == 0 && v14 == &dword_0 + 2;
    v126 = v40;
    v138 = 0uLL;
    v139 = 0uLL;
    obj = [v110 subsections];
    v130 = [obj countByEnumeratingWithState:&v138 objects:v143 count:16];
    v120 = ((v15 & 0x4000) == 0) & v26;
    v128 = ((v15 & 0x400) == 0) & v128;
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
            v43 = [v42 suppressedSettings];
            v44 = [v42 pushSettings];
            v116 = [v42 alertType];
            v115 = [v42 lockScreenSetting];
            v114 = [v42 notificationCenterSetting];
            v113 = [v42 carPlaySetting];
            v112 = [v42 remoteNotificationsSetting];
            v45 = [(NotificationCell *)self isAnnounceEnabledForSectionInfo:v42];
            v46 = [v42 criticalAlertSetting];
            v111 = [v42 isDeliveredQuietly];
            v47 = [v110 sectionID];
            v48 = [TLAlert bb_toneLibraryAlertTypeForSectionID:v47];

            if (v48)
            {
              v49 = +[TLToneManager sharedToneManager];
              v50 = [v42 subsectionID];
              v51 = [v49 currentToneIdentifierForAlertType:v48 topic:v50];

              v44 &= 0xFFFFFFED;
              if (v51)
              {
                v52 = [v51 isEqualToString:v107];
                v53 = 18;
                if (v52)
                {
                  v53 = 0;
                }

                v44 |= v53;
              }

              if (MGGetBoolAnswer())
              {
                v54 = +[TLVibrationManager sharedVibrationManager];
                v55 = [v42 subsectionID];
                v56 = [v54 currentVibrationIdentifierForAlertType:v48 topic:v55];

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

            v58 = v44 & 0xFFFFFFF6;
            if ((v43 & 0x2000) == 0)
            {
              v58 = v44;
            }

            if ((v43 & 0x4000) != 0)
            {
              v58 &= 0xFFFFFFED;
            }

            if ((v43 & 0x20) != 0)
            {
              v58 &= 0xFFFFFFDB;
            }

            v59 = v116;
            if ((v43 & 0x20) != 0)
            {
              v59 = 0;
            }

            v61 = (v43 & 2) == 0 && v115 == &dword_0 + 2;
            v63 = (v43 & 1) == 0 && v114 == &dword_0 + 2;
            v65 = (v43 & 0x80) == 0 && v113 == &dword_0 + 2;
            v67 = (*&v43 & 0x10000) == 0 && v112 == &dword_0 + 2;
            v69 = (v43 & 0x100) == 0 && v46 == &dword_0 + 2;
            v123 |= v58;
            v122 |= v61;
            v121 |= v63;
            v124 |= v65;
            v125 |= v67;
            v128 |= ((v43 & 0x400) == 0) & v45;
            v126 |= v69;
            v120 |= ((v43 & 0x6000) == 0) & v57;
            v119 |= v111;
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
  v72 = [v71 effectiveGlobalScheduledDeliverySetting];

  if (v72 == &dword_0 + 2)
  {
    v73 = v103;
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

  if (v72 != &dword_0 + 2)
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

  v92 = [v110 sectionID];
  if ([v92 isEqualToString:@"com.apple.mobilemail"])
  {
    v93 = [v110 subsections];
    v94 = [v93 count] == 0;
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
    if (v119)
    {
      v97 = @"DELIVER_QUIETLY";
LABEL_159:
      v98 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v99 = [v98 localizedStringForKey:v97 value:&stru_4E3F0 table:@"NotificationsSettings"];
      [v105 addObject:v99];

      goto LABEL_160;
    }

    if ((!v103 || ((v121 | v122 | v90 | v91 | v128 | v126 | v94) & 1) == 0) && v110)
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

- (void)setAppIcon:(id)a3
{
  v5 = a3;
  appIcon = self->_appIcon;
  if (appIcon != v5)
  {
    v8 = v5;
    [(UIImageView *)appIcon removeFromSuperview];
    objc_storeStrong(&self->_appIcon, a3);
    v7 = [(NotificationCell *)self contentView];
    [v7 addSubview:self->_appIcon];

    appIcon = [(NotificationCell *)self setNeedsLayout];
    v5 = v8;
  }

  _objc_release_x1(appIcon, v5);
}

- (void)setAppName:(id)a3
{
  v4 = a3;
  v5 = [(NotificationCell *)self textLabel];
  [v5 setText:v4];
}

- (void)setNotificationTypes:(id)a3
{
  v4 = a3;
  v5 = [(NotificationCell *)self detailTextLabel];
  [v5 setText:v4];
}

- (BOOL)isAnnounceEnabledForSectionInfo:(id)a3
{
  v3 = a3;
  v4 = +[NCSettingsGatewayController sharedInstance];
  v5 = [v4 effectiveGlobalAnnounceSetting];

  v6 = [v3 announceSetting];
  if (v5 == &dword_0 + 2 && v6 >= 2)
  {
    v9 = v6;
    v10 = +[NCSettingsGatewayController sharedInstance];
    v8 = [v10 effectiveGlobalScheduledDeliverySetting] != &dword_0 + 2 || objc_msgSend(v3, "scheduledDeliverySetting") != &dword_0 + 2 || objc_msgSend(v3, "timeSensitiveSetting") == &dword_0 + 2 || objc_msgSend(v3, "directMessagesSetting") == &dword_0 + 2;

    if (v8 && v9 == &dword_0 + 2)
    {
      v11 = [v3 timeSensitiveSetting];
      v12 = [v3 scheduledDeliverySetting] != &dword_0 + 2 && objc_msgSend(v3, "directMessagesSetting") || objc_msgSend(v3, "scheduledDeliverySetting") == &dword_0 + 2 && objc_msgSend(v3, "directMessagesSetting") == &dword_0 + 2;
      LOBYTE(v8) = v11 == &dword_0 + 2 || v12;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end